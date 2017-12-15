package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ling.entity.Allergic;
import com.ling.entity.Allergictype;
import com.ling.mapper.AllergicMapper;
import com.ling.service.IAllergicService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Advicetype 表数据服务层接口实现类
 *
 */
@Service
public class AllergicServiceImpl extends SuperServiceImpl<AllergicMapper, Allergic> implements IAllergicService {
	
	@Autowired
	private AllergicMapper allergicDao;
	
	@Override
	public List<Allergictype> allergicType() {
		return allergicDao.allergicType();
	}

	@Override
	public List<Allergic> allergic(int patientID) {
		return allergicDao.allergic(patientID);
	}


}