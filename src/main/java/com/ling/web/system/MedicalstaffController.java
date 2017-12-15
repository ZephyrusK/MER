package com.ling.web.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ling.entity.Medicalstaff;
import com.ling.service.IMedicalstaffService;


@Controller
@RequestMapping("medicalstaff")
public class MedicalstaffController {

	@Autowired 
	private IMedicalstaffService iMedicalstaffService;
	
//	@ResponseBody
//	@RequestMapping(value="medicalstaff_updateById", produces="application/json;charset=UTF-8")
	
	@RequestMapping("medicalstaff")
	public ModelAndView medicalstaff(){//       系统管理---医务人员-----进入加载数据		
		ModelAndView mv=new ModelAndView("/system/medicalstaff");
		//EntityWrapper<Medicalstaff> medicalstaffEw =new EntityWrapper<Medicalstaff>();
		mv.addObject("medicalstaff", iMedicalstaffService.selectAll());		
		return mv;
	}	
	
	@RequestMapping("select")
	public ModelAndView select(String name){//   系统管理---医务人员-----查询		
		ModelAndView mv=new ModelAndView("/system/medicalstaff");
		mv.addObject("medicalstaff", iMedicalstaffService.select(name));		
		mv.addObject("name", name);
		return mv;		
	}
	
	@RequestMapping("toaddupdate")
	public ModelAndView toAdd_Update(int medicalStaffID){//   系统管理---医务人员-----To新增修改页面		
		ModelAndView mv=new ModelAndView("/system/medicalstaff_in_up");
		mv.addObject("academic", iMedicalstaffService.academic());
		if(medicalStaffID == -1){
			mv.addObject("title", "新增医务人员");
		}else{
			mv.addObject("title", "修改医务人员");
			mv.addObject("vo", iMedicalstaffService.selectById(medicalStaffID));
		}
		return mv;
	}
	
	@RequestMapping("insertOrUpdate")
	public ModelAndView insert(Medicalstaff vo){//   系统管理---医务人员-----新增-----修改			
		iMedicalstaffService.insertOrUpdateSelective(vo);
		ModelAndView mv=medicalstaff();
		return mv;	
	}
	
	@RequestMapping("delete")
	public ModelAndView delete(Medicalstaff medicalstaff){//   系统管理---医务人员-----删除	
		medicalstaff.setEffectiveNot(0);
		iMedicalstaffService.updateSelectiveById(medicalstaff);
		ModelAndView mv=medicalstaff();
		return mv;
	}
}
