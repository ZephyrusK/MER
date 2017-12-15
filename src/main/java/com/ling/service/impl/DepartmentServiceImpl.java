package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.DepartmentMapper;
import com.ling.entity.Department;
import com.ling.service.IDepartmentService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Department 表数据服务层接口实现类
 *
 */
@Service
public class DepartmentServiceImpl extends SuperServiceImpl<DepartmentMapper, Department> implements IDepartmentService {


}