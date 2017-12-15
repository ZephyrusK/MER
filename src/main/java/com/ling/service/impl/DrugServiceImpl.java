package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.DrugMapper;
import com.ling.entity.Drug;
import com.ling.service.IDrugService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Drug 表数据服务层接口实现类
 *
 */
@Service
public class DrugServiceImpl extends SuperServiceImpl<DrugMapper, Drug> implements IDrugService {


}