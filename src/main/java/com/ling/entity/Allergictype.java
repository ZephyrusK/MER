package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
*
* 过敏类型
*
*/

public class Allergictype implements Serializable {
	
	@TableField(exist = false)
	private static final long serialVersionUID = 1L;
	
	/** 过敏类型ID */
	@TableId(type = IdType.AUTO)
	private Integer allergicTypeID;
	
	/** 过敏名称 */
	private String allergicTypeName;
	
	/** 有效否 */
	private Integer effectiveNot;

	public Integer getAllergicTypeID() {
		return allergicTypeID;
	}

	public void setAllergicTypeID(Integer allergicTypeID) {
		this.allergicTypeID = allergicTypeID;
	}

	public String getAllergicTypeName() {
		return allergicTypeName;
	}

	public void setAllergicTypeName(String allergicTypeName) {
		this.allergicTypeName = allergicTypeName;
	}

	public Integer getEffectiveNot() {
		return effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}
}
