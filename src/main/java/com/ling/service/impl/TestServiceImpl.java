package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ling.mapper.TestMapper;
import com.ling.entity.Sample;
import com.ling.entity.Test;
import com.ling.entity.Testdetail;
import com.ling.entity.Testitem;
import com.ling.service.ITestService;
import com.ling.tree.Tree;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Test 表数据服务层接口实现类
 *
 */
@Service
public class TestServiceImpl extends SuperServiceImpl<TestMapper, Test> implements ITestService {
	
	@Autowired
	private TestMapper testDao;
	

	@Override
	public List<Testitem> testitem() {
		return testDao.testitem();
	}
	
	@Override
	public List<Sample> sample() {		
		return testDao.sample();
	}

	@Override
	public Testitem byTestItemID(int testItemID) {
		return testDao.byTestItemID(testItemID);
	}

	@Override
	public List<Test> selectTest(String name, String applyTime) {
		return testDao.selectTest(name, applyTime);
	}

	@Override
	public Test test(int testID) {
		return testDao.test(testID);
	}

	@Override
	public List<Testdetail> testdetail(int testID) {
		return testDao.testdetail(testID);
	}

	@Override
	public List<Tree> testTree(int patientID) {
		return testDao.testTree(patientID);
	}
}