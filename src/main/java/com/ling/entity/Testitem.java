package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 检验项目
 *
 */
public class Testitem implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 检验项目ID */
	@TableId(type = IdType.AUTO)
	private Integer testItemID;

	/** 检验项目名称 */
	private String testItemName;
	
	/** 单位 */
	private String unit;
	
	/** 参考范围 */
	private String rrs;

	/** 备注 */
	private String remark;

	/** 有效否 */
	private Integer effectiveNot;


	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getRrs() {
		return rrs;
	}

	public void setRrs(String rrs) {
		this.rrs = rrs;
	}

	public Integer getTestItemID() {
		return this.testItemID;
	}

	public void setTestItemID(Integer testItemID) {
		this.testItemID = testItemID;
	}

	public String getTestItemName() {
		return this.testItemName;
	}

	public void setTestItemName(String testItemName) {
		this.testItemName = testItemName;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
