package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 科室
 *
 */
public class Department implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 科室ID */
	@TableId(type = IdType.AUTO)
	private Integer departmentID;

	/** 科室名称 */
	private String departmentName;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getDepartmentID() {
		return this.departmentID;
	}

	public void setDepartmentID(Integer departmentID) {
		this.departmentID = departmentID;
	}

	public String getDepartmentName() {
		return this.departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
