package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ling.mapper.DoctorMapper;
import com.ling.entity.Doctor;
import com.ling.entity.Patient;
import com.ling.service.IDoctorService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Doctor 表数据服务层接口实现类
 *
 */
@Transactional
@Service(value="iDoctorService")
public class DoctorServiceImpl extends SuperServiceImpl<DoctorMapper, Doctor> implements IDoctorService {
	
	@Autowired
	private DoctorMapper doctorDao;
	
	@Override
	public List<Doctor> selectAll() {		
		return doctorDao.selectAll();
	}

	@Override
	public List<Doctor> select(int titleID, int departmentID) {				
		return doctorDao.select(titleID, departmentID);
	}	
	
	@Override
	public List<Doctor> title() {		
		return doctorDao.title();
	}

	@Override
	public List<Doctor> department() {		
		return doctorDao.department();
	}

	@Override
	public List<Doctor> treatmentGroup() {		
		return doctorDao.treatmentGroup();
	}
	
	@Override
	public List<Doctor> medicalStaff() {		
		return doctorDao.medicalStaff();
	}
	
	@Override
	public Doctor selectById(int doctorID) {
		return doctorDao.selectById(doctorID);
	}

	@Override
	public List<Patient> choice() {		
		return doctorDao.choice();
	}

	@Override
	public List<Patient> choice_select(String name) {		
		return doctorDao.choice_select(name);
	}



}