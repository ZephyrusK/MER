package com.ling.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ling.entity.Allergic;
import com.ling.entity.Allergictype;

/**
*
* Allergic 表数据库控制层接口
*
*/
public interface AllergicMapper extends AutoMapper<Allergic>{
	
	List<Allergictype> allergicType();
	
	List<Allergic> allergic(int patientID);
}
