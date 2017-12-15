package com.ling.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ling.entity.Medicalstaff;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * Medicalstaff 表数据库控制层接口
 *
 */
public interface MedicalstaffMapper extends AutoMapper<Medicalstaff> {

	List<Medicalstaff> selectAll();
	
	List<Medicalstaff> select(@Param("name")String name);
	
	List<Medicalstaff> academic();
	
	Medicalstaff selectById(int medicalStaffID);
}