package com.ling.service;

import java.util.List;

import com.ling.entity.Allergic;
import com.ling.entity.Allergictype;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Advicetype 表数据服务层接口
 *
 */
public interface IAllergicService extends ISuperService<Allergic> {

	List<Allergictype> allergicType();
	
	List<Allergic> allergic(int patientID);
}