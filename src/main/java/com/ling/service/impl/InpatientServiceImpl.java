package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.InpatientMapper;
import com.ling.entity.Inpatient;
import com.ling.service.IInpatientService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Inpatient 表数据服务层接口实现类
 *
 */
@Service
public class InpatientServiceImpl extends SuperServiceImpl<InpatientMapper, Inpatient> implements IInpatientService {


}