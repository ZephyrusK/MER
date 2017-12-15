package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 工作资料
 *
 */
public class Workdata implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 工作ID */
	@TableId(type = IdType.AUTO)
	private Integer workID;

	/** 职业 */
	private String occupation;

	/** 单位名称 */
	private String unitName;

	/** 单位电话 */
	private String unitTelephone;

	/** 单位地址 */
	private String unitAddress;

	/** 单位编码 */
	private String unitCode;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getWorkID() {
		return this.workID;
	}

	public void setWorkID(Integer workID) {
		this.workID = workID;
	}

	public String getOccupation() {
		return this.occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getUnitName() {
		return this.unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getUnitTelephone() {
		return this.unitTelephone;
	}

	public void setUnitTelephone(String unitTelephone) {
		this.unitTelephone = unitTelephone;
	}

	public String getUnitAddress() {
		return this.unitAddress;
	}

	public void setUnitAddress(String unitAddress) {
		this.unitAddress = unitAddress;
	}

	public String getUnitCode() {
		return this.unitCode;
	}

	public void setUnitCode(String unitCode) {
		this.unitCode = unitCode;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
