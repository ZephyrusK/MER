package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 检查项目
 *
 */
public class Checkitem implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 检查项目ID */
	@TableId(type = IdType.AUTO)
	private Integer checkItemID;

	/** 检查项目名称 */
	private String checkItemName;

	/** 检查室ID */
	private Integer checkDepartmentID;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getCheckItemID() {
		return this.checkItemID;
	}

	public void setCheckItemID(Integer checkItemID) {
		this.checkItemID = checkItemID;
	}

	public String getCheckItemName() {
		return this.checkItemName;
	}

	public void setCheckItemName(String checkItemName) {
		this.checkItemName = checkItemName;
	}
	
	public Integer getCheckDepartmentID() {
		return checkDepartmentID;
	}

	public void setCheckDepartmentID(Integer checkDepartmentID) {
		this.checkDepartmentID = checkDepartmentID;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
