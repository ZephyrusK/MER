package com.ling.service;

import java.util.List;

import com.ling.entity.Sample;
import com.ling.entity.Test;
import com.ling.entity.Testdetail;
import com.ling.entity.Testitem;
import com.ling.tree.Tree;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Test 表数据服务层接口
 *
 */
public interface ITestService extends ISuperService<Test> {

	List<Testitem> testitem();
	
	List<Sample> sample();
	
	Testitem byTestItemID (int testItemID);
	
	List<Test> 	selectTest(String name,String applyTime);
	
	Test test(int testID);
	
	List<Testdetail> testdetail(int testID);
	
	List<Tree> testTree(int patientID);
}