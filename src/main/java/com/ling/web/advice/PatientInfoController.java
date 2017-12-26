package com.ling.web.advice;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.support.json.JSONUtils;
import com.ling.entity.Allergic;
import com.ling.service.IAllergicService;
import com.ling.service.IDiseaserecordService;
import com.ling.service.IPatientService;
import com.ling.util.PageData;


@Controller
@RequestMapping("patientInfo")
public class PatientInfoController {		//病人信息
	
	@Autowired
	private IPatientService iPatientService;//病人基础信息
	@Autowired
	private IAllergicService iAllergicService;//过敏
	@Autowired
	private IDiseaserecordService iDiseaserecordService;//病程记录
	
	
	@RequestMapping("patientmedical_base")
	public ModelAndView patientmedical_base(HttpSession httpSession){//	  病人信息---基础信息 + 留院观察---入院资料---基础信息
		ModelAndView mv=new ModelAndView("/patientmedical/base");
		if((Integer) httpSession.getAttribute("patientID")>0){
			int patientID=(Integer) httpSession.getAttribute("patientID");
			mv.addObject("detaile", iPatientService.detaile(patientID));
		}		
		return mv;		
	}
	
	@RequestMapping("patientmedical_allergy")
	public ModelAndView patientmedical_allergy(HttpSession session){//	  病人信息---过敏信息
		ModelAndView mv =new ModelAndView("/patientmedical/allergy");
		mv.addObject("allergic", iAllergicService.allergic((Integer)session.getAttribute("patientID")));
		mv.addObject("allergicType", iAllergicService.allergicType());
		return mv;
	}
	

	
	@RequestMapping("patientmedical_allergyInsert")
	public ModelAndView patientmedical_allergyInsert(Allergic vo,HttpSession session){//过敏新增和修改
		ModelAndView mv =new ModelAndView("/patientmedical/allergy");
		vo.setDoctorID((Integer)session.getAttribute("doctorID"));
		vo.setPatientID((Integer)session.getAttribute("patientID"));
		vo.setEffectiveNot(1);
		iAllergicService.insertOrUpdateSelective(vo);
		mv.addObject("allergic", iAllergicService.allergic((Integer)session.getAttribute("patientID")));
		mv.addObject("allergicType", iAllergicService.allergicType());
		return mv;
	}
	
	@RequestMapping("patientmedical_health")
	public ModelAndView patientmedical_health(HttpSession httpSession){//病人信息---健康报告
		ModelAndView mv=new ModelAndView("/patientmedical/health");
		if((Integer) httpSession.getAttribute("patientID")>0){
			int patientID=(Integer) httpSession.getAttribute("patientID");
			mv.addObject("detaile", iPatientService.detaile(patientID));
		}		
		return mv;		
	}
	
	
	
	@RequestMapping("patientmedical_disease")// 病人病历---病人信息---既往病历 + 留院观察---入院资料---既往病历
	public ModelAndView patientmedical_disease(HttpSession httpSession){// 病人信息---既往病历 ----获取年 调整为年的大节点
		ModelAndView mv=new ModelAndView("/patientmedical/disease");
		
		//获取年 调整为年的大节点
		List<PageData> listpd = new ArrayList<PageData>();
		List<PageData> years = iDiseaserecordService.selectYear((Integer)httpSession.getAttribute("patientID"));
		for(PageData pd : years){
			PageData treepd = new PageData();
			treepd.put("name", pd.get("riqi"));
			treepd.put("open", true);
			if(selectMonth(String.valueOf(pd.get("riqi")),httpSession)!=null){
				treepd.put("children", selectMonth(String.valueOf(pd.get("riqi")),httpSession));
			}
			listpd.add(treepd);
		}
		mv.addObject("treejson", JSONUtils.toJSONString(listpd));
		return mv;
	}
	
	public List<PageData> selectMonth(String year,HttpSession httpSession){//获取月 调整为月的节点
		List<PageData> months = iDiseaserecordService.selectMonth(year,(Integer)httpSession.getAttribute("patientID"));
		List<PageData> listpd = new ArrayList<PageData>();
		for(PageData pd : months){
			PageData treepd = new PageData();
			treepd.put("name", String.valueOf(pd.get("riqi")));
			treepd.put("open", true);
			if(selectDay(year + "-" + String.valueOf(pd.get("riqi")),httpSession)!=null){
				treepd.put("children", selectDay(year + "-" + ((Integer.parseInt(String.valueOf(pd.get("riqi")))>9)?String.valueOf(pd.get("riqi")):"0"+String.valueOf(pd.get("riqi"))),httpSession));
			}
			listpd.add(treepd);
		}
		return listpd;
	}
	
	public List<PageData> selectDay(String yearmonth,HttpSession httpSession){//获取日 调整为日的节点
		List<PageData> days = iDiseaserecordService.selectDay(yearmonth,(Integer)httpSession.getAttribute("patientID"));
		List<PageData> listpd = new ArrayList<PageData>();
		for(PageData pd : days){
			PageData treepd = new PageData();
			treepd.put("id", yearmonth + "-" + ((Integer.parseInt(String.valueOf(pd.get("riqi")))>9)?String.valueOf(pd.get("riqi")):"0"+String.valueOf(pd.get("riqi"))));
			treepd.put("name", String.valueOf(pd.get("riqi")));
			treepd.put("open", true);
			listpd.add(treepd);
		}
		return listpd;
	}
	
	

}
