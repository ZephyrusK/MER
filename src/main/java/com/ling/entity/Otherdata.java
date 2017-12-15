package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 其他信息
 *
 */
public class Otherdata implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 其他ID */
	@TableId(type = IdType.AUTO)
	private Integer otherID;

	/** 计费类型ID */
	private Integer chargeTypeID;

	/** 医保号 */
	private String medicalNum;

	/** 随访号 */
	private String followNum;

	/** 军人 */
	private String soldiers;

	/** 军兵种 */
	private String arms;

	/** 有效否 */
	private Integer effectiveNot;
		
	/** 付款类型 */
	private String chargeTypeName;	
	

	public String getChargeTypeName() {
		return chargeTypeName;
	}

	public void setChargeTypeName(String chargeTypeName) {
		this.chargeTypeName = chargeTypeName;
	}

	public Integer getOtherID() {
		return this.otherID;
	}

	public void setOtherID(Integer otherID) {
		this.otherID = otherID;
	}

	public Integer getChargeTypeID() {
		return this.chargeTypeID;
	}

	public void setChargeTypeID(Integer chargeTypeID) {
		this.chargeTypeID = chargeTypeID;
	}

	public String getMedicalNum() {
		return this.medicalNum;
	}

	public void setMedicalNum(String medicalNum) {
		this.medicalNum = medicalNum;
	}

	public String getFollowNum() {
		return this.followNum;
	}

	public void setFollowNum(String followNum) {
		this.followNum = followNum;
	}

	public String getSoldiers() {
		return this.soldiers;
	}

	public void setSoldiers(String soldiers) {
		this.soldiers = soldiers;
	}

	public String getArms() {
		return this.arms;
	}

	public void setArms(String arms) {
		this.arms = arms;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
