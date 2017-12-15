package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.TestitemMapper;
import com.ling.entity.Testitem;
import com.ling.service.ITestitemService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Testitem 表数据服务层接口实现类
 *
 */
@Service
public class TestitemServiceImpl extends SuperServiceImpl<TestitemMapper, Testitem> implements ITestitemService {


}