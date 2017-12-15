package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 检查室
 *
 */
public class Checkdepartment implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 检查室ID */
	@TableId(type = IdType.AUTO)
	private Integer checkDepartmentID;

	/** 检查室名称 */
	private String checkDepartmentName;

	/** 有效否 */
	private Integer effectiveNot;
		
	public Integer getCheckDepartmentID() {
		return checkDepartmentID;
	}

	public void setCheckDepartmentID(Integer checkDepartmentID) {
		this.checkDepartmentID = checkDepartmentID;
	}

	public String getCheckDepartmentName() {
		return checkDepartmentName;
	}

	public void setCheckDepartmentName(String checkDepartmentName) {
		this.checkDepartmentName = checkDepartmentName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
