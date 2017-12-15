package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 药物
 *
 */
public class Drug implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 药物ID */
	@TableId(type = IdType.AUTO)
	private Integer drugID;
	
	/** 药品类型ID */
	private Integer adviceTypeID;

	/** 规格ID */
	private Integer specificationID;
	
	/** 规格名称 */
	private String specificationName;

	/** 途径ID */
	private Integer wayID;
	
	/** 途径名称 */
	private String wayName;
	
	/** 单位ID */
	private Integer unitID;
	
	/** 单位名称 */
	private String unitName;

	/** 药物名称 */
	private String drugName;

	/** 生产日期 */
	private Date productionDate;

	/** 有效日期 */
	private Date effectiveDate;

	/** 用途 */
	private String purpose;

	/** 禁忌 */
	private String taboo;

	/** 厂家 */
	private String manufacturers;

	/** 出厂地 */
	private String factory;

	/** 有效否 */
	private Integer effectiveNot;
	
	public String getSpecificationName() {
		return specificationName;
	}

	public void setSpecificationName(String specificationName) {
		this.specificationName = specificationName;
	}

	public String getWayName() {
		return wayName;
	}

	public void setWayName(String wayName) {
		this.wayName = wayName;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public Integer getDrugID() {
		return this.drugID;
	}

	public void setDrugID(Integer drugID) {
		this.drugID = drugID;
	}	
	
	public Integer getAdviceTypeID() {
		return adviceTypeID;
	}

	public void setAdviceTypeID(Integer adviceTypeID) {
		this.adviceTypeID = adviceTypeID;
	}

	public Integer getSpecificationID() {
		return this.specificationID;
	}

	public void setSpecificationID(Integer specificationID) {
		this.specificationID = specificationID;
	}

	public Integer getWayID() {
		return this.wayID;
	}

	public void setWayID(Integer wayID) {
		this.wayID = wayID;
	}
	
	public Integer getUnitID() {
		return unitID;
	}

	public void setUnitID(Integer unitID) {
		this.unitID = unitID;
	}

	public String getDrugName() {
		return this.drugName;
	}

	public void setDrugName(String drugName) {
		this.drugName = drugName;
	}

	public Date getProductionDate() {
		return this.productionDate;
	}

	public void setProductionDate(Date productionDate) {
		this.productionDate = productionDate;
	}

	public Date getEffectiveDate() {
		return this.effectiveDate;
	}

	public void setEffectiveDate(Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	public String getPurpose() {
		return this.purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getTaboo() {
		return this.taboo;
	}

	public void setTaboo(String taboo) {
		this.taboo = taboo;
	}

	public String getManufacturers() {
		return this.manufacturers;
	}

	public void setManufacturers(String manufacturers) {
		this.manufacturers = manufacturers;
	}

	public String getFactory() {
		return this.factory;
	}

	public void setFactory(String factory) {
		this.factory = factory;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
