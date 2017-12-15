package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.TemplateMapper;
import com.ling.entity.Template;
import com.ling.service.ITemplateService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Template 表数据服务层接口实现类
 *
 */
@Service
public class TemplateServiceImpl extends SuperServiceImpl<TemplateMapper, Template> implements ITemplateService {


}