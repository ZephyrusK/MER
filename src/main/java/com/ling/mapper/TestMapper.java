package com.ling.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ling.entity.Sample;
import com.ling.entity.Test;
import com.ling.entity.Testdetail;
import com.ling.entity.Testitem;
import com.ling.tree.Tree;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * Test 表数据库控制层接口
 *
 */
public interface TestMapper extends AutoMapper<Test> {
	
	List<Testitem> testitem();
	
	List<Sample> sample();
	
	Testitem byTestItemID (int testItemID);
	
	List<Test> 	selectTest(@Param("name")String name,@Param("applyTime")String applyTime);
	
	Test test(int testID);
	
	List<Testdetail> testdetail(int testID);
	
	List<Tree> testTree(int patientID);
}