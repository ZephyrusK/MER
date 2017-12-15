package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ling.mapper.DiagnosisMapper;
import com.ling.entity.Advicecategory;
import com.ling.entity.Diagnosis;
import com.ling.entity.Diagnosisname;
import com.ling.entity.Diagnosistype;
import com.ling.entity.Drug;
import com.ling.entity.Frequency;
import com.ling.service.IDiagnosisService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Diagnosis 表数据服务层接口实现类
 *
 */
@Service
public class DiagnosisServiceImpl extends SuperServiceImpl<DiagnosisMapper, Diagnosis> implements IDiagnosisService {

	@Autowired
	private DiagnosisMapper diagnosisDao;

	@Override
	public List<Diagnosistype> diagnosistype() {
		return diagnosisDao.diagnosistype();
	}

	@Override
	public List<Diagnosisname> diagnosisname() {
		return diagnosisDao.diagnosisname();
	}

	@Override
	public Diagnosisname icdCode(int diagnosisNameID) {
		return diagnosisDao.icdCode(diagnosisNameID);
	}

	@Override
	public List<Advicecategory> adviceCategory() {
		return diagnosisDao.adviceCategory();
	}

	@Override
	public List<Drug> drug_Xi() {
		return diagnosisDao.drug_Xi();
	}
	
	@Override
	public List<Drug> drug_Zhong() {
		return diagnosisDao.drug_Zhong();
	}
	
	@Override
	public List<Frequency> frequency() {
		return diagnosisDao.frequency();
	}

	@Override
	public Drug byDrugID(int drugID) {
		return diagnosisDao.byDrugID(drugID);
	}
	
}