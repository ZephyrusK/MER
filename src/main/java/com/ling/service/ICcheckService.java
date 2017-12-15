package com.ling.service;

import java.util.List;

import com.ling.entity.Ccheck;
import com.ling.entity.Checkdepartment;
import com.ling.entity.Checkitem;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Ccheck 表数据服务层接口
 *
 */
public interface ICcheckService extends ISuperService<Ccheck> {

	List<Checkdepartment> checkDepartment();
	
	List<Checkitem> checkItem(int checkDepartmentID);
	
	List<Ccheck> selectCheck(String name, String applyTime);
	
	Ccheck ccheck(int checkID);
}