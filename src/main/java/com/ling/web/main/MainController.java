package com.ling.web.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ling.entity.Doctor;
import com.ling.service.IDoctorService;
import com.ling.service.IPatientService;

@Controller
@RequestMapping("main")
public class MainController {
	
	@Autowired 
	private IDoctorService iDoctorService;
		
	
	@ResponseBody//ajax----转换成json格式
	@RequestMapping("login")
	public ModelAndView login(Doctor doctor,HttpSession httpSession){//   登陆	-------登陆	
		httpSession.setAttribute("patientID", 0);
		EntityWrapper<Doctor> DoctorEw =new EntityWrapper<Doctor>();
		DoctorEw.setSqlSelect("name,password,doctorID");
		DoctorEw.where("name = {0}", doctor.getName());
		DoctorEw.and("password = {0}", doctor.getPassword());
	
		Doctor vo =iDoctorService.selectOne(DoctorEw);
		
		if(vo != null){
				ModelAndView mv=new ModelAndView("/main/main");
				httpSession.setAttribute("doctorName", vo.getName());
				httpSession.setAttribute("doctorID", vo.getDoctorID());
				System.out.println(vo.getDoctorID());
				return mv;
		}		
		ModelAndView mv=new ModelAndView("/main/login");		
		return mv;
	}
	
	@RequestMapping("choice_patient")
	public ModelAndView choice_patient(){//   To选择病人jsp
		ModelAndView mv=new ModelAndView("/main/choice_patient");
		mv.addObject("choice", iDoctorService.choice());
		return mv;
	}
	
	@RequestMapping("choice_select")
	public ModelAndView choice_select(String name){//   To查询病人jsp
		ModelAndView mv=new ModelAndView("/main/choice_patient");
		mv.addObject("choice", iDoctorService.choice_select(name));
		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping("choice")
	public ModelAndView choice(int patientID,HttpSession httpSession){//   选择病人
		ModelAndView mv=new ModelAndView("/main/main");
		httpSession.setAttribute("patientID", patientID);
		return mv;
	}
	
	@RequestMapping("patient_menu")
	public String patient_menu(){//   病人病历---菜单jsp		
		return "/patientmedical/patient_menu";
	}
	
	@RequestMapping("inpatient_menu")
	public String inpatient_menu(){//   留院观察---菜单jsp		
		return"/inpatient/inpatient_menu";
	}
	
	@RequestMapping("doctor_menu")
	public String doctor_menu(){//   医生信息---菜单jsp	
		return"/doctor/doctor_menu";
	}
	
	@RequestMapping("download_menu")
	public String download_menu(){//   资料下载---菜单jsp	
		return"/download/download_menu";
	}
	
	
	@RequestMapping("system_menu")
	public String system_menu(){//   信息维护---菜单jsp	
		return"/system/system_menu";
	}
	
	
	
}
