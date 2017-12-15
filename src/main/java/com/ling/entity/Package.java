package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 套餐
 *
 */
public class Package implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 套餐ID */
	@TableId(type = IdType.AUTO)
	private Integer packageID;

	/** 名称 */
	private String packageName;

	/** 父ID */
	private Integer fatherID;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getPackageID() {
		return this.packageID;
	}

	public void setPackageID(Integer packageID) {
		this.packageID = packageID;
	}

	public String getPackageName() {
		return this.packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
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
