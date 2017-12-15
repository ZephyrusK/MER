package com.ling.service.impl;

import org.springframework.stereotype.Service;

import com.ling.mapper.PackageMapper;
import com.ling.entity.Package;
import com.ling.service.IPackageService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Package 表数据服务层接口实现类
 *
 */
@Service
public class PackageServiceImpl extends SuperServiceImpl<PackageMapper, Package> implements IPackageService {


}