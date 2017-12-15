package com.ling.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ling.entity.Basicdata;
import com.ling.entity.Otherdata;
import com.ling.entity.Patient;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * Patient 表数据库控制层接口
 *
 */
public interface PatientMapper extends AutoMapper<Patient> {

	List<Basicdata> selectAll();
	
	List<Basicdata> select(@Param("name")String name);
	
	Patient detaile(@Param("patientID")int patientID);
	
	List<Otherdata> chargetype();
}