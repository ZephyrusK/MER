package com.ling.mapper;

import java.util.List;

import com.ling.entity.Advicecategory;
import com.ling.entity.Diagnosis;
import com.ling.entity.Diagnosisname;
import com.ling.entity.Diagnosistype;
import com.ling.entity.Drug;
import com.ling.entity.Frequency;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * Diagnosis 表数据库控制层接口
 *
 */
public interface DiagnosisMapper extends AutoMapper<Diagnosis> {
	
	List<Diagnosistype> diagnosistype();
	
	List<Diagnosisname> diagnosisname();
	
	Diagnosisname icdCode(int diagnosisNameID);
	
	List<Advicecategory> adviceCategory();
	
	List<Drug> drug_Xi();
	
	List<Drug> drug_Zhong();
	
	List<Frequency> frequency();
	
	Drug byDrugID (int drugID);
}