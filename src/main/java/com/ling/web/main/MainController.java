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
	
	@RequestMapping("advice_menu")
	public String advice_menu(){//   病历---菜单jsp		
		return "/advice/advice_menu";
	}
	
	@RequestMapping("inpatient_menu")
	public String inpatient_menu(){//   留观---菜单jsp		
		return"/inpatient/inpatient_menu";
	}
	
	@RequestMapping("rescue_menu")
	public String rescue_menu(){//   抢救---菜单jsp	
		return"/rescue/rescue_menu";
	}
	
	@RequestMapping("maintenance_menu")
	public String maintenance_menu(){//   使用维护---菜单jsp	
		return"/maintenance/maintenance_menu";
	}
	
	@RequestMapping("department_menu")
	public String department_menu(){//   科室管理---菜单jsp	
		return"/department/department_menu";
	}
	
	@RequestMapping("system_menu")
	public String system_menu(){//   系统管理---菜单jsp	
		return"/system/system_menu";
	}
	@RequestMapping("advice_advice")
	public String advice_advice(){
		return"/advice/advice";
	}
	@RequestMapping("advice_base")
	public String advice_base(){//留观-基本信息
		return"/advice/base";
	}
	@RequestMapping("advice_disease")
	public String advice_disease(){//留观-住院资料-病程记录
		return"/advice/disease";
	}
	@RequestMapping("advice_operation")
	public String advice_operation(){//留观-住院资料-手术资料
		return"/advice/operation";
	}
	
}
