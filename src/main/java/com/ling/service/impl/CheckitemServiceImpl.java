package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.CheckitemMapper;
import com.ling.entity.Checkitem;
import com.ling.service.ICheckitemService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Checkitem 表数据服务层接口实现类
 *
 */
@Service
public class CheckitemServiceImpl extends SuperServiceImpl<CheckitemMapper, Checkitem> implements ICheckitemService {


}