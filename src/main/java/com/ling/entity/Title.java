package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 职称
 *
 */
public class Title implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 职称ID */
	@TableId(type = IdType.AUTO)
	private Integer titleID;

	/** 职称名称 */
	private String titleName;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getTitleID() {
		return this.titleID;
	}

	public void setTitleID(Integer titleID) {
		this.titleID = titleID;
	}

	public String getTitleName() {
		return this.titleName;
	}

	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
