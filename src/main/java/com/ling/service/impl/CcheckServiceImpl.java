package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ling.mapper.CcheckMapper;
import com.ling.entity.Ccheck;
import com.ling.entity.Checkdepartment;
import com.ling.entity.Checkitem;
import com.ling.service.ICcheckService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Ccheck 表数据服务层接口实现类
 *
 */
@Service
public class CcheckServiceImpl extends SuperServiceImpl<CcheckMapper, Ccheck> implements ICcheckService {
	
	@Autowired
	private CcheckMapper ccheckDao;
	
	@Override
	public List<Checkdepartment> checkDepartment() {
		return ccheckDao.checkDepartment();
	}

	@Override
	public List<Checkitem> checkItem(int checkDepartmentID) {
		return ccheckDao.checkItem(checkDepartmentID);
	}

	@Override
	public List<Ccheck> selectCheck(String name, String applyTime) {
		return ccheckDao.selectCheck(name, applyTime);
	}

	@Override
	public Ccheck ccheck(int checkID) {
		return ccheckDao.ccheck(checkID);
	}


}