package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 病程类型
 *
 */
public class Coursetype implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 病程类型ID */
	@TableId(type = IdType.AUTO)
	private Integer courseTypeID;

	/** 病程类型名称 */
	private String courseTypeName;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getCourseTypeID() {
		return this.courseTypeID;
	}

	public void setCourseTypeID(Integer courseTypeID) {
		this.courseTypeID = courseTypeID;
	}

	public String getCourseTypeName() {
		return this.courseTypeName;
	}

	public void setCourseTypeName(String courseTypeName) {
		this.courseTypeName = courseTypeName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
