package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.TitleMapper;
import com.ling.entity.Title;
import com.ling.service.ITitleService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Title 表数据服务层接口实现类
 *
 */
@Service
public class TitleServiceImpl extends SuperServiceImpl<TitleMapper, Title> implements ITitleService {


}