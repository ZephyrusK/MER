package com.ling.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ling.entity.Ccheck;
import com.ling.entity.Checkdepartment;
import com.ling.entity.Checkitem;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * Ccheck 表数据库控制层接口
 *
 */
public interface CcheckMapper extends AutoMapper<Ccheck> {

	List<Checkdepartment> checkDepartment();
	
	List<Checkitem> checkItem(int checkDepartmentID);
	
	List<Ccheck> selectCheck(@Param("name")String name, @Param("applyTime")String applyTime);
	
	Ccheck ccheck(int checkID);
}