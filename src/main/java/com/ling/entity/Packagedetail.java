package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 套餐明细
 *
 */
public class Packagedetail implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 套餐明细ID */
	@TableId(type = IdType.AUTO)
	private Integer packageDetailID;

	/** 药物ID */
	private Integer drugID;

	/** 套餐ID */
	private Integer packageID;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getPackageDetailID() {
		return this.packageDetailID;
	}

	public void setPackageDetailID(Integer packageDetailID) {
		this.packageDetailID = packageDetailID;
	}

	public Integer getDrugID() {
		return this.drugID;
	}

	public void setDrugID(Integer drugID) {
		this.drugID = drugID;
	}

	public Integer getPackageID() {
		return this.packageID;
	}

	public void setPackageID(Integer packageID) {
		this.packageID = packageID;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
