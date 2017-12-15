package com.ling.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ling.entity.Doctor;
import com.ling.entity.Patient;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * Doctor 表数据库控制层接口
 *
 */
public interface DoctorMapper extends AutoMapper<Doctor> {

	public List<Doctor> selectAll();
	
	public List<Doctor> select(@Param("titleID")int titleID,@Param("departmentID")int departmentID);
	
	public List<Doctor> title();
	
	public List<Doctor> department();
	
	public List<Doctor> treatmentGroup();
	
	public List<Doctor> medicalStaff();
	
	public Doctor selectById(int doctorID);
	
	public List<Patient> choice();
	
	public List<Patient> choice_select(@Param("name")String name);
}