package com.ling.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ling.entity.Coursetype;
import com.ling.entity.Diseaserecord;
import com.ling.entity.Diagnosis;
import com.ling.util.PageData;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * Diseaserecord 表数据库控制层接口
 *
 */
public interface DiseaserecordMapper extends AutoMapper<Diseaserecord> {

	List<Coursetype> courseType();
	
	List<Diseaserecord> recordTime(int patientID);
	
	List<PageData> selectYear(int patientID);
	
	List<PageData> selectMonth(@Param("year")String year,@Param("patientID")int patientID);
	
	List<PageData> selectDay(@Param("yearmonth")String yearmonth,@Param("patientID")int patientID);
	
	Diseaserecord diseaseContent(@Param("recordTime")String recordTime, @Param("patientID")int patientID);
	
	List<Diagnosis> Diagnosis(@Param("diagnosisTime")String diagnosisTime, @Param("patientID")int patientID);
}