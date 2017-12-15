package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.SampleMapper;
import com.ling.service.ISampleService;
import com.ling.entity.Sample;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Testitemtype 表数据服务层接口实现类
 *
 */
@Service
public class SampleServiceImpl extends SuperServiceImpl<SampleMapper, Sample> implements ISampleService {


}