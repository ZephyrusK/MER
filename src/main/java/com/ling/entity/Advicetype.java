package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 医嘱类型
 *
 */
public class Advicetype implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 医嘱类型ID */
	@TableId(type = IdType.AUTO)
	private Integer adviceTypeID;

	/** 医嘱类型名称 */
	private String adviceTypeName;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getAdviceTypeID() {
		return this.adviceTypeID;
	}

	public void setAdviceTypeID(Integer adviceTypeID) {
		this.adviceTypeID = adviceTypeID;
	}

	public String getAdviceTypeName() {
		return this.adviceTypeName;
	}

	public void setAdviceTypeName(String adviceTypeName) {
		this.adviceTypeName = adviceTypeName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
