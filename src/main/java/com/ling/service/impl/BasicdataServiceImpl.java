package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.BasicdataMapper;
import com.ling.entity.Basicdata;
import com.ling.service.IBasicdataService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Basicdata 表数据服务层接口实现类
 *
 */
@Service
public class BasicdataServiceImpl extends SuperServiceImpl<BasicdataMapper, Basicdata> implements IBasicdataService {


}