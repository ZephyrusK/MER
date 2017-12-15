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
	

	@RequestMapping("advice_test")
	public ModelAndView advice_test(){//	 To检验单
		ModelAndView mv=new ModelAndView("/advice/test");
		mv.addObject("test", iTestService.selectTest("", ""));
		return mv;
	}
	
	@RequestMapping("selectTest")
	public ModelAndView selectTest(String name,String applyTime){//	  查询检验单
		ModelAndView mv=new ModelAndView("/advice/test");
		mv.addObject("test", iTestService.selectTest(name, applyTime));
		return mv;
	}
	
	@RequestMapping("toeditTest")
	public ModelAndView toeditTest(int testID){//	 To编辑检验单
		ModelAndView mv=new ModelAndView("/advice/test_edit");
		mv.addObject("test", iTestService.test(testID));
		mv.addObject("testdetail", iTestService.testdetail(testID));
		return mv;
	}
	
	@RequestMapping("SaveeditTest")
	public ModelAndView SaveeditTest(int testID,Integer[] testDetailID,String[] result){//	  检验单的编辑提交
		ModelAndView mv=new ModelAndView("/advice/test");
		Test test =new Test();
		test.setTestID(testID);
		test.setReportTime(new Date());
		iTestService.updateSelectiveById(test);
		Testdetail testdetail = null;
		List<Testdetail> listTestdetail=new ArrayList<Testdetail>();
		for(int i=0;i<result.length;i++){			//修改检验明细的结果字段
			testdetail = new Testdetail();			
			testdetail.setTestDetailID(testDetailID[i]);
			testdetail.setResult(result[i]);
			listTestdetail.add(testdetail);
		}
		iTestdetailService.updateBatchById(listTestdetail);
		mv.addObject("test", iTestService.selectTest("", ""));
		return mv;
	}
	
	@RequestMapping("cancel")
	public ModelAndView cancel(int testID){//	  作废检验单
		ModelAndView mv=new ModelAndView("/advice/test");
		Test test =new Test();
		test.setTestID(testID);
		test.setEffectiveNot(0);
		iTestService.updateSelectiveById(test);
		mv.addObject("test", iTestService.selectTest("", ""));
		return mv;
	}
	
	@RequestMapping("advice_check")
	public ModelAndView advice_check(){//	  病历---	To检查单
		ModelAndView mv=new ModelAndView("/advice/check");
		mv.addObject("check", iCcheckService.selectCheck("",""));
		return mv;
	}
	
	@RequestMapping("selectCheck")
	public ModelAndView selectCheck(String name,String applyTime){//	  查询检查单
		ModelAndView mv=new ModelAndView("/advice/check");
		mv.addObject("check", iCcheckService.selectCheck(name, applyTime));
		mv.addObject("patientName", name);
		return mv;
	}
	
	@RequestMapping("toeditCheck")
	public ModelAndView toeditCheck(int checkID){//	 To编辑检查单
		ModelAndView mv=new ModelAndView("/advice/check_edit");
		mv.addObject("check", iCcheckService.ccheck(checkID));
		return mv;
	}
	
	@RequestMapping("SaveeditCheck")
	public ModelAndView SaveeditCheck(Ccheck ccheck){//	  检查单的编辑提交
		ModelAndView mv=new ModelAndView("/advice/check");
		ccheck.setReportTime(new Date());		
		iCcheckService.updateSelectiveById(ccheck);		
		mv.addObject("check", iCcheckService.selectCheck("",""));
		return mv;
	}
	
	@RequestMapping("cancleCheck")
	public ModelAndView cancleCheck(int checkID){//	  作废检查单
		ModelAndView mv=new ModelAndView("/advice/check");
		Ccheck check =new Ccheck();
		check.setCheckID(checkID);
		check.setEffectiveNot(0);
		iCcheckService.updateSelectiveById(check);
		mv.addObject("check", iCcheckService.selectCheck("",""));
		return mv;
	}
		
	
	@RequestMapping("advice_test_report")
	public ModelAndView advice_test_report(){//	  病历---	To检验报告
		ModelAndView mv=new ModelAndView("/advice/test_report");
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
	
	@RequestMapping("test_reportSelect")
	public String test_reportSelect(){//	  病历---	Select检验报告
		
		
		
		return"/advice/test_report";
	}

	@RequestMapping("advice_check_report")
	public String advice_check_report(){//	  病历---	检查报告
		return"/advice/check_report";
	}
}
