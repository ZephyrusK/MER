package com.ling.web.advice;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.ling.entity.Advice;
import com.ling.entity.Ccheck;
import com.ling.entity.Checkitem;
import com.ling.entity.Content;
import com.ling.entity.Diagnosis;
import com.ling.entity.Diagnosisname;
import com.ling.entity.Diseaserecord;
import com.ling.entity.Drug;
import com.ling.entity.Test;
import com.ling.entity.Testdetail;
import com.ling.entity.Testitem;
import com.ling.service.IAdviceService;
import com.ling.service.ICcheckService;
import com.ling.service.IDiagnosisService;
import com.ling.service.IDiseaserecordService;
import com.ling.service.ITestService;
import com.ling.service.ITestdetailService;


@Controller
@RequestMapping("diagnosis")
public class DiagnosisController {		//诊断信息

	@Autowired
	private IDiseaserecordService iDiseaserecordService;
	@Autowired
	private IDiagnosisService iDiagnosisService;	
	@Autowired
	private IAdviceService iAdviceService;
	@Autowired
	private ITestService iTestService;
	@Autowired
	private ITestdetailService iTestdetailService;
	@Autowired
	private ICcheckService iCcheckService;
	
	@RequestMapping("patientmedical_medical")
	public ModelAndView advice_medical(){//	  诊断信息---病历
		ModelAndView mv=new ModelAndView("/patientmedical/medical");
		mv.addObject("courseType", iDiseaserecordService.courseType());		
		return mv;
	}
	
	@RequestMapping("medical_Insert")//诊断信息---病历新增
	public ModelAndView medical_Insert(Content content,int courseTypeID,HttpSession httpsession){
		ModelAndView mv=new ModelAndView("/patientmedical/medical");
		Diseaserecord disease=new Diseaserecord();
		//拼接病程内容字段
		String diseaseContent=content.getZhuSu()+"　#"+content.getXianBingShi()+"　#"
							+content.getJiWangShi()+"　#"+content.getGeRenShi()+"　#"
							+content.getJiaZuShi()+"　#"+content.getTiGeJianCha()+"　#"
							+content.getZhuanKeJianCha()+"　#"+content.getFuZhuJianCha();
		
		disease.setDoctorID((Integer)httpsession.getAttribute("doctorID"));
		disease.setPatientID((Integer)httpsession.getAttribute("patientID"));
		disease.setCourseTypeID(courseTypeID);
		disease.setRecordTime(new Date());
		disease.setDiseaseContent(diseaseContent);
		disease.setEffectiveNot(1);
		iDiseaserecordService.insertOrUpdateSelective(disease);
		mv.addObject("courseType", iDiseaserecordService.courseType());	
		return mv;
	}
	
	@RequestMapping("patientmedical_diagnosis")
	public ModelAndView advice_diagnosis(){//诊断信息---诊断
		ModelAndView mv=new ModelAndView("/patientmedical/diagnosis");
		mv.addObject("diagnosistype", iDiagnosisService.diagnosistype());
		mv.addObject("diagnosisname", iDiagnosisService.diagnosisname());
		return	mv;
	}
	
	@ResponseBody
	@RequestMapping("icdCode")//诊断jsp---icdCode绑定
	public String icdCode(int diagnosisNameID){
		Diagnosisname icd=iDiagnosisService.icdCode(diagnosisNameID);
		String icdCode=icd.getIcdCode();
		return icdCode;
	}	
	
	@RequestMapping("diagnosis_Insert")//诊断信息---诊断新增
	public ModelAndView diagnosis_Insert(@RequestBody List<Diagnosis> list,HttpSession session){
		ModelAndView mv=new ModelAndView("/advice/diagnosis");
		Diagnosis diagnosis = null;
		List<Diagnosis> listDiagnosis=new ArrayList<Diagnosis>();
		for(int i=0;i<list.size();i++){
			diagnosis = new Diagnosis();
			diagnosis.setDiagnosisTypeID(list.get(i).getDiagnosisTypeID());
			diagnosis.setDiagnosisNameID(list.get(i).getDiagnosisNameID());
			diagnosis.setDoctorID((Integer)session.getAttribute("doctorID"));
			diagnosis.setPatientID((Integer)session.getAttribute("patientID"));
			diagnosis.setDiagnosisTime(new Date());
			diagnosis.setEffectiveNot(1);
			listDiagnosis.add(diagnosis);
		}
		System.out.println(JSON.toJSONString(list));
		iDiagnosisService.insertBatchSelective(listDiagnosis);
		return mv;
	}
	
	@RequestMapping("patientmedical_advice")
	public ModelAndView advice_advice(){//诊断信息	---医嘱
		ModelAndView mv=new ModelAndView("/patientmedical/advice");
		mv.addObject("adviceCategory", iDiagnosisService.adviceCategory());
		mv.addObject("drug_Xi", iDiagnosisService.drug_Xi());
		mv.addObject("drug_Zhong", iDiagnosisService.drug_Zhong());
		mv.addObject("frequency", iDiagnosisService.frequency());
		return	mv;
	}
	
	@ResponseBody//诊断信息---医嘱---绑定药物的规格、单位、途径属性
	@RequestMapping(value="byDrugID",produces="application/json;charset=UTF-8")
	public Drug byDrugID(int drugID){
		Drug drug=iDiagnosisService.byDrugID(drugID);
		return drug;
	}	
	
	@RequestMapping("patientmedical_Insert")//诊断信息	---医嘱新增
	public ModelAndView advice_Insert(@RequestBody List<Advice> list,HttpSession session){		
		ModelAndView mv=new ModelAndView("/patientmedical/advice");
		Advice advice = null;
		List<Advice> listAdvice=new ArrayList<Advice>();
		for(int i=0;i<list.size();i++){
			advice = new Advice();
			advice.setAdviceTypeID(list.get(i).getAdviceTypeID());
			advice.setAdviceCategoryID(list.get(i).getAdviceCategoryID());
			advice.setDrugID(list.get(i).getDrugID());
			advice.setFrequencyID(list.get(i).getFrequencyID());
			advice.setDoctorID((Integer)session.getAttribute("doctorID"));
			advice.setPatientID((Integer)session.getAttribute("patientID"));
			advice.setStartTime(new Date());
			advice.setDose(list.get(i).getDose());
			advice.setDayNum(list.get(i).getDayNum());
			advice.setTotal(list.get(i).getTotal());
			advice.setDoctoNote(list.get(i).getDoctoNote());
			advice.setEffectiveNot(1);
			listAdvice.add(advice);
		}
		iAdviceService.insertBatchSelective(listAdvice);
		mv.addObject("adviceCategory", iDiagnosisService.adviceCategory());
		mv.addObject("drug_Xi", iDiagnosisService.drug_Xi());
		mv.addObject("drug_Zhong", iDiagnosisService.drug_Zhong());
		mv.addObject("frequency", iDiagnosisService.frequency());
		return mv;
	}
	
	@RequestMapping("patientmedical_test_apply")//诊断信息	---检验申请
	public  ModelAndView patientmedical_test_apply(){	
		ModelAndView mv=new ModelAndView("/patientmedical/test_apply");
		mv.addObject("testItem", iTestService.testitem()); //绑定检验项目
		mv.addObject("sample", iTestService.sample());	   //绑定样本
		return mv;
	}
	
	@ResponseBody//诊断信息---检验申请---绑定单位、参考范围
	@RequestMapping(value="byTestItemID",produces="application/json;charset=UTF-8")
	public Testitem byTestItemID(int testItemID){
		Testitem testitem=iTestService.byTestItemID(testItemID);
		return testitem;
	}
	
	@RequestMapping("test_Insert")//诊断信息---检验申请新增 
	public ModelAndView test_Insert(Integer[] testItemID,String[] remarks,Test test,HttpSession session){	
		ModelAndView mv=new ModelAndView("/patientmedical/test_apply");
		test.setDoctorID((Integer)session.getAttribute("doctorID"));
		test.setPatientID((Integer)session.getAttribute("patientID"));
		test.setEffectiveNot(1);
		iTestService.insertOrUpdateSelective(test);//新增检验
		Testdetail testdetail = null;
		List<Testdetail> listTestdetail=new ArrayList<Testdetail>();
		for(int i=0;i<remarks.length;i++){			//新增检验明细
			testdetail = new Testdetail();			
			testdetail.setTestID(test.getTestID());
			testdetail.setTestItemID(testItemID[i]);
			testdetail.setRemark(remarks[i]);
			testdetail.setEffectiveNot(1);
			listTestdetail.add(testdetail);
		}
		iTestdetailService.insertBatchSelective(listTestdetail);
		mv.addObject("testItem", iTestService.testitem());	//绑定检验项目
		mv.addObject("sample", iTestService.sample());		//绑定样本
		return mv;
	}
	
	@RequestMapping("patientmedical_check_apply")//诊断信息---检查申请
	public ModelAndView advice_check_apply(){
		ModelAndView mv=new ModelAndView("/patientmedical/check_apply");
		mv.addObject("checkDepartment", iCcheckService.checkDepartment());
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("checkItem")//诊断信息---检查申请---检查项目
	public List<Checkitem> checkItem(int checkDepartmentID){	 
		List<Checkitem> checkitem=iCcheckService.checkItem(checkDepartmentID);
		return checkitem;
	}
	
	@RequestMapping("checkInsert")//诊断信息---检查申请---新增检查项目
	public ModelAndView checkInsert(Ccheck ccheck,HttpSession session){
		ModelAndView mv=new ModelAndView("/patientmedical/check_apply");
		ccheck.setDoctorID((Integer)session.getAttribute("doctorID"));
		ccheck.setPatientID((Integer)session.getAttribute("patientID"));
		ccheck.setApplyTime(new Date());
		ccheck.setEffectiveNot(1);
		iCcheckService.insertSelective(ccheck);
		mv.addObject("checkDepartment", iCcheckService.checkDepartment());
		return mv;
	}
	
	@RequestMapping("patientmedical_operation")//诊断信息---手术资料
	public String patientmedical_operation(){
		return"/patientmedical/operation";
	}
}
