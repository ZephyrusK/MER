package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 诊断类型
 *
 */
public class Diagnosistype implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 诊断类型ID */
	@TableId(type = IdType.AUTO)
	private Integer diagnosisTypeID;

	/** 诊断类型名称 */
	private String diagnosisTypeName;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getDiagnosisTypeID() {
		return this.diagnosisTypeID;
	}

	public void setDiagnosisTypeID(Integer diagnosisTypeID) {
		this.diagnosisTypeID = diagnosisTypeID;
	}

	public String getDiagnosisTypeName() {
		return this.diagnosisTypeName;
	}

	public void setDiagnosisTypeName(String diagnosisTypeName) {
		this.diagnosisTypeName = diagnosisTypeName;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
