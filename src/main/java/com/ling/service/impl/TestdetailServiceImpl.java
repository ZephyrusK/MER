package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.TestdetailMapper;
import com.ling.entity.Testdetail;
import com.ling.service.ITestdetailService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Testdetail 表数据服务层接口实现类
 *
 */
@Service
public class TestdetailServiceImpl extends SuperServiceImpl<TestdetailMapper, Testdetail> implements ITestdetailService {


}