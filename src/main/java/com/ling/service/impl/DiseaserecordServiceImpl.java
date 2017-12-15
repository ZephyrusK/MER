package com.ling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ling.mapper.DiseaserecordMapper;
import com.ling.entity.Coursetype;
import com.ling.entity.Diseaserecord;
import com.ling.entity.Diagnosis;
import com.ling.service.IDiseaserecordService;
import com.ling.util.PageData;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Diseaserecord 表数据服务层接口实现类
 *
 */
@Service
public class DiseaserecordServiceImpl extends SuperServiceImpl<DiseaserecordMapper, Diseaserecord> implements IDiseaserecordService {

	@Autowired
	private  DiseaserecordMapper diseaserecordDao;
	
	
	@Override
	public List<Coursetype> courseType() {
		return diseaserecordDao.courseType();
	}

	@Override
	public List<Diseaserecord> recordTime(int patientID) {
		return diseaserecordDao.recordTime(patientID);
	}

	@Override
	public List<PageData> selectYear(int patientID) {
		return diseaserecordDao.selectYear(patientID);
	}

	@Override
	public List<PageData> selectMonth(String year,int patientID) {
		return diseaserecordDao.selectMonth(year,patientID);
	}

	@Override
	public List<PageData> selectDay(String yearmonth,int patientID) {
		return diseaserecordDao.selectDay(yearmonth,patientID);
	}

	@Override
	public Diseaserecord diseaseContent(String recordTime, int patientID) {
		return diseaserecordDao.diseaseContent(recordTime, patientID);
	}

	@Override
	public List<Diagnosis> Diagnosis(String diagnosisTime,int patientID) {
		return diseaserecordDao.Diagnosis(diagnosisTime, patientID);
	}

	
}