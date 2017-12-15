package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 诊疗组
 *
 */
public class Treatmentgroup implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 诊疗组ID */
	@TableId(type = IdType.AUTO)
	private Integer treatmentGroupID;

	/** 组名 */
	private String groupName;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getTreatmentGroupID() {
		return this.treatmentGroupID;
	}

	public void setTreatmentGroupID(Integer treatmentGroupID) {
		this.treatmentGroupID = treatmentGroupID;
	}

	public String getGroupName() {
		return this.groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
