package com.ling.web.system;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ling.entity.Basicdata;
import com.ling.entity.Contactmode;
import com.ling.entity.Otherdata;
import com.ling.entity.Patient;
import com.ling.entity.Workdata;
import com.ling.service.IBasicdataService;
import com.ling.service.IContactmodeService;
import com.ling.service.IMedicalstaffService;
import com.ling.service.IOtherdataService;
import com.ling.service.IPatientService;
import com.ling.service.IWorkdataService;
import com.sun.org.apache.regexp.internal.RE;

@Controller
@RequestMapping("patient")
public class PatientController {
	
	@Autowired
	private IPatientService iPatientService;	
	@Autowired
	private IMedicalstaffService iMedicalstaffService;
	@Autowired
	private IBasicdataService iBasicdataService;
	@Autowired 
	private IContactmodeService iContactmodeService;
	@Autowired
	private IWorkdataService iWorkdataService;
	@Autowired 
	private IOtherdataService iOtherdataService;
	
	@RequestMapping("patient")                //信息维护---病人信息维护 ---增加病人信息
	public ModelAndView patient(){
		ModelAndView mv=new ModelAndView("/system/patient");
		mv.addObject("basicdata", iPatientService.selectAll());
		return mv;
	}
	
	@RequestMapping("select")                  //信息维护---病人信息维护 ---选择病人
	public ModelAndView select(String name){
		ModelAndView mv=new ModelAndView("/system/patient");
		mv.addObject("basicdata", iPatientService.select(name));
		return mv;
	}
	
	@RequestMapping("insertOrUpdate")          //信息维护---病人信息维护 ---更新病人
	public ModelAndView all_in_up(Basicdata basic,Contactmode contact,Workdata work, Otherdata other,HttpServletRequest request){
		ModelAndView mv=new ModelAndView("/system/patient");
		iBasicdataService.insertOrUpdateSelective(basic);		
		iContactmodeService.insertOrUpdateSelective(contact);
		iWorkdataService.insertOrUpdateSelective(work);
		iOtherdataService.insertOrUpdateSelective(other);
		Patient pati=new Patient();
		if(request.getParameter("patientID")!=""){
			pati.setPatientID(Integer.parseInt(request.getParameter("patientID")));
		}
		pati.setBasicID(basic.getBasicID());
		pati.setContactID(contact.getContactID());
		pati.setWorkID(work.getWorkID());
		pati.setOtherID(other.getOtherID());
		pati.setEffectiveNot(1);
		iPatientService.insertOrUpdateSelective(pati);
		mv.addObject("basicdata", iPatientService.selectAll());
		return mv;
	}
	
	@RequestMapping("todetaile")               //信息维护---病人信息维护 ---查看病人基本信息
	public ModelAndView todetaile(int patientID){
		ModelAndView mv=new ModelAndView("/patientmedical/base");
		mv.addObject("detaile", iPatientService.detaile(patientID));
		mv.addObject("patientID", patientID);
		return mv;
	}
	
	@RequestMapping("alltoaddupdate")          //信息维护---病人信息维护 ---病人基本信息编辑
	public ModelAndView alltoaddupdate(int patientID){
		ModelAndView mv=new ModelAndView("/system/patient_in_up_all");
		mv.addObject("academic", iMedicalstaffService.academic());
		mv.addObject("chargetype", iPatientService.chargetype());
		mv.addObject("detaile", iPatientService.detaile(patientID));
		return mv;
	}	
	
	@RequestMapping("basic")
	public ModelAndView basic_in_up(Basicdata basic){
		ModelAndView mv=new ModelAndView("/system/patient_in_up_all");
		
		return mv;
	}
	
	@RequestMapping("contact")
	public ModelAndView contact_in_up(Contactmode contact){
		ModelAndView mv=new ModelAndView("/system/patient_in_up_all");
		
		return mv;
	}
	
	@RequestMapping("work")
	public ModelAndView work_in_up(Workdata work){
		ModelAndView mv=new ModelAndView("/system/patient_in_up_all");
		
		return mv;
	}
	
	@RequestMapping("other")
	public ModelAndView other_in_up(Otherdata other){
		ModelAndView mv=new ModelAndView("/system/patient_in_up_all");
		
		return mv;
	}
}
