package com.ling.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ling.entity.Coursetype;
import com.ling.entity.Diagnosis;
import com.ling.entity.Diseaserecord;
import com.ling.util.PageData;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Diseaserecord 表数据服务层接口
 *
 */
public interface IDiseaserecordService extends ISuperService<Diseaserecord> {

	List<Coursetype> courseType();
	
	List<Diseaserecord> recordTime(int patientID);
	
	List<PageData> selectYear(int patientID);
	
	List<PageData> selectMonth(String year,int patientID);
	
	List<PageData> selectDay(String yearmonth,int patientID);
	
	Diseaserecord diseaseContent(@Param("recordTime")String recordTime, @Param("patientID")int patientID);
	
	List<Diagnosis> Diagnosis(@Param("diagnosisTime")String diagnosisTime, @Param("patientID")int patientID);
}