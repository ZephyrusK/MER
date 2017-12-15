package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.WorkdataMapper;
import com.ling.entity.Workdata;
import com.ling.service.IWorkdataService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Workdata 表数据服务层接口实现类
 *
 */
@Service
public class WorkdataServiceImpl extends SuperServiceImpl<WorkdataMapper, Workdata> implements IWorkdataService {


}