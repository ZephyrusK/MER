package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ling.mapper.PatientMapper;
import com.ling.entity.Basicdata;
import com.ling.entity.Otherdata;
import com.ling.entity.Patient;
import com.ling.service.IPatientService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Patient 表数据服务层接口实现类
 *
 */
@Transactional
@Service(value="iPatientService")
public class PatientServiceImpl extends SuperServiceImpl<PatientMapper, Patient> implements IPatientService {

	@Autowired
	private PatientMapper patientDao;
	
	@Override
	public List<Basicdata> selectAll() {		
		return patientDao.selectAll();
	}

	@Override
	public List<Basicdata> select(String name) {		
		return patientDao.select(name);
	}

	@Override
	public Patient detaile(int patientID) {

		return patientDao.detaile(patientID);
	}

	@Override
	public List<Otherdata> chargetype() {		
		return patientDao.chargetype();
	}	
}