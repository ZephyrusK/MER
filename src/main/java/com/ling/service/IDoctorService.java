package com.ling.service;

import java.util.List;

import com.ling.entity.Doctor;
import com.ling.entity.Patient;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Doctor 表数据服务层接口
 *
 */
public interface IDoctorService extends ISuperService<Doctor> {
	
	public List<Doctor> selectAll();
	
	public List<Doctor> select(int titleID,int departmentID);
	
	public List<Patient> choice();
	
	public List<Patient> choice_select(String name);
	
	public List<Doctor> title();
	
	public List<Doctor> department();
	
	public List<Doctor> treatmentGroup();
	
	public List<Doctor> medicalStaff();
	
	public Doctor selectById(int doctorID);
}