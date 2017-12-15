package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 检验套餐
 *
 */
public class Testpackage implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 检验套餐ID */
	@TableId(type = IdType.AUTO)
	private Integer testPackageID;
	
	/** 检验ID */
	private Integer testID;

	/** 检验套餐名称 */
	private String testPackageName;

	/** 父ID */
	private Integer fatherID;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getTestPackageID() {
		return this.testPackageID;
	}

	public void setTestPackageID(Integer testPackageID) {
		this.testPackageID = testPackageID;
	}

	public Integer getTestID() {
		return testID;
	}

	public void setTestID(Integer testID) {
		this.testID = testID;
	}

	public String getTestPackageName() {
		return this.testPackageName;
	}

	public void setTestPackageName(String testPackageName) {
		this.testPackageName = testPackageName;
	}

	public Integer getFatherID() {
		return this.fatherID;
	}

	public void setFatherID(Integer fatherID) {
		this.fatherID = fatherID;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
