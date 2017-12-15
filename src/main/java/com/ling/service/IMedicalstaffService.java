package com.ling.service;

import java.util.List;

import com.ling.entity.Medicalstaff;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Medicalstaff 表数据服务层接口
 *
 */
public interface IMedicalstaffService extends ISuperService<Medicalstaff> {

	public List<Medicalstaff> selectAll();
	
	public List<Medicalstaff> select(String name);
	
	public List<Medicalstaff> academic();
	
	public Medicalstaff selectById(int medicalStaffID);
}