package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 医嘱类别
 *
 */
public class Advicecategory implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 医嘱类别ID */
	@TableId(type = IdType.AUTO)
	private Integer adviceCategoryID;

	/** 医嘱类别名称 */
	private String adviceCategoryName;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getAdviceCategoryID() {
		return this.adviceCategoryID;
	}

	public void setAdviceCategoryID(Integer adviceCategoryID) {
		this.adviceCategoryID = adviceCategoryID;
	}

	public String getAdviceCategoryName() {
		return this.adviceCategoryName;
	}

	public void setAdviceCategoryName(String adviceCategoryName) {
		this.adviceCategoryName = adviceCategoryName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
