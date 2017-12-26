package com.ling.web.advice;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ling.entity.Ccheck;
import com.ling.entity.Test;
import com.ling.entity.Testdetail;
import com.ling.service.ICcheckService;
import com.ling.service.ITestService;
import com.ling.service.ITestdetailService;
import com.ling.tree.Tree;

@Controller
@RequestMapping("report")
public class ReportController {
	
	@Autowired
	private ITestService iTestService;	
	@Autowired
	private ITestdetailService iTestdetailService;
	@Autowired
	private ICcheckService iCcheckService;
	

	
	@RequestMapping("download_check")//资料下载---检查单
	public ModelAndView download_check(){
		ModelAndView mv=new ModelAndView("/download/check");
		mv.addObject("check", iCcheckService.selectCheck("",""));
		return mv;
	}
	
	@RequestMapping("selectCheck")//资料下载---查询检查单
	public ModelAndView selectCheck(String name,String applyTime){
		ModelAndView mv=new ModelAndView("/download/check");
		mv.addObject("check", iCcheckService.selectCheck(name, applyTime));
		mv.addObject("patientName", name);
		return mv;
	}
	
	@RequestMapping("toeditCheck")//资料下载---编辑检查单
	public ModelAndView toeditCheck(int checkID){
		ModelAndView mv=new ModelAndView("/download/check_edit");
		mv.addObject("check", iCcheckService.ccheck(checkID));
		return mv;
	}
	
	@RequestMapping("SaveeditCheck")//资料下载---检查单---检查单的编辑提交
	public ModelAndView SaveeditCheck(Ccheck ccheck){	  
		ModelAndView mv=new ModelAndView("/download/check");
		ccheck.setReportTime(new Date());		
		iCcheckService.updateSelectiveById(ccheck);		
		mv.addObject("check", iCcheckService.selectCheck("",""));
		return mv;
	}
	
	@RequestMapping("cancleCheck")//资料下载---查询检查单---作废检查单
	public ModelAndView cancleCheck(int checkID){	  
		ModelAndView mv=new ModelAndView("/download/check");
		Ccheck check =new Ccheck();
		check.setCheckID(checkID);
		check.setEffectiveNot(0);
		iCcheckService.updateSelectiveById(check);
		mv.addObject("check", iCcheckService.selectCheck("",""));
		return mv;
	}
		
	
	@RequestMapping("download_check_report")//资料下载---检查报告
	public ModelAndView download_check_report(){
		ModelAndView mv=new ModelAndView("/download/check_report");
		return mv;
	}
	
	@RequestMapping("tree")		//绑定时间Tree的方法
	public void tree(HttpServletResponse response,HttpSession session) throws IOException{
		List<Tree> trees = this.iTestService.testTree((Integer)session.getAttribute("patientID"));
		JSONArray jsonArray = JSONArray.fromObject(trees);
		PrintWriter out = response.getWriter();
		out.print(jsonArray);
		out.flush();
	}
	
	@RequestMapping("check_report_uploading")//资料下载---上传检查报告
	public String check_report_uploading(){	  
		
		
		
		return"/download/check_report";
	}
	
	@RequestMapping("check_report_downloading")//资料下载---下载检查报告
	public String check_report_downloading(){	  
		
		
		
		return"/download/check_report";
	}
	
	@RequestMapping("check_report_print")//资料下载---打印检查报告
	public String check_report_print(){	  
		
		
		
		return"/download/check_report";
	}
	
	@RequestMapping("check_report_onlinebrowsen")//资料下载---在线浏览检查报告
	public String check_report_onlinebrowsen(){	  
		
		
		
		return"/download/check_report";
	}

	
}
