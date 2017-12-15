package com.ling.service;

import java.util.List;

import com.ling.entity.Basicdata;
import com.ling.entity.Otherdata;
import com.ling.entity.Patient;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Patient 表数据服务层接口
 *
 */
public interface IPatientService extends ISuperService<Patient> {

	public List<Basicdata> selectAll();
	
	public List<Basicdata> select(String name);
	
	public Patient detaile(int patientID);
	
	public List<Otherdata> chargetype();
}