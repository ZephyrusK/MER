package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 检验明细
 *
 */
public class Testdetail implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 检验明细ID */
	@TableId(type = IdType.AUTO)
	private Integer testDetailID;

	/** 检验ID */
	private Integer testID;

	/** 检验项目ID */
	private Integer testItemID;
	
	/** 检验项目名称 */
	private String testItemName;
	
	/** 单位 */
	private String unit;
	
	/** 参考范围 */
	private String rrs;
	
	/** 结果 */
	private String result;
	
	/** 备注 */
	private String remark;

	/** 有效否 */
	private Integer effectiveNot;
	

	public String getTestItemName() {
		return testItemName;
	}

	public void setTestItemName(String testItemName) {
		this.testItemName = testItemName;
	}

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

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getTestDetailID() {
		return this.testDetailID;
	}

	public void setTestDetailID(Integer testDetailID) {
		this.testDetailID = testDetailID;
	}

	public Integer getTestID() {
		return this.testID;
	}

	public void setTestID(Integer testID) {
		this.testID = testID;
	}

	public Integer getTestItemID() {
		return this.testItemID;
	}

	public void setTestItemID(Integer testItemID) {
		this.testItemID = testItemID;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
