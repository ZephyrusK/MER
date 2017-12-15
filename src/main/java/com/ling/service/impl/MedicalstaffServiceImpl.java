package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ling.mapper.MedicalstaffMapper;
import com.ling.entity.Medicalstaff;
import com.ling.service.IMedicalstaffService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Medicalstaff 表数据服务层接口实现类
 *
 */
@Transactional
@Service(value="iMedicalstaffService")
public class MedicalstaffServiceImpl extends SuperServiceImpl<MedicalstaffMapper, Medicalstaff> implements IMedicalstaffService {

	@Autowired
	private  MedicalstaffMapper medicalstaffDao;
	
	@Override
	public List<Medicalstaff> selectAll() {
		return medicalstaffDao.selectAll();
	}

	@Override
	public List<Medicalstaff> select(String name) {		
		return medicalstaffDao.select(name);
	}

	@Override
	public List<Medicalstaff> academic() {		
		return medicalstaffDao.academic();
	}

	@Override
	public Medicalstaff selectById(int medicalStaffID) {
		return medicalstaffDao.selectById(medicalStaffID);
	}

	
}