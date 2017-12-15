package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.AdviceMapper;
import com.ling.entity.Advice;
import com.ling.service.IAdviceService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Advice 表数据服务层接口实现类
 *
 */
@Service
public class AdviceServiceImpl extends SuperServiceImpl<AdviceMapper, Advice> implements IAdviceService {


}