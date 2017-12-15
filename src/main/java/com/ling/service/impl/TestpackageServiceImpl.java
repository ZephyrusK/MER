package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.TestpackageMapper;
import com.ling.entity.Testpackage;
import com.ling.service.ITestpackageService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Testpackage 表数据服务层接口实现类
 *
 */
@Service
public class TestpackageServiceImpl extends SuperServiceImpl<TestpackageMapper, Testpackage> implements ITestpackageService {


}