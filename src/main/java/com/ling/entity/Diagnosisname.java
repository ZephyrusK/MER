package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 诊断名
 *
 */
public class Diagnosisname implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 诊断名ID */
	@TableId(type = IdType.AUTO)
	private Integer diagnosisNameID;

	/** 诊断名 */
	private String diagnosisName;
	
	/** ICD码 */
	private String icdCode;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getDiagnosisNameID() {
		return this.diagnosisNameID;
	}

	public void setDiagnosisNameID(Integer diagnosisNameID) {
		this.diagnosisNameID = diagnosisNameID;
	}

	public String getDiagnosisName() {
		return this.diagnosisName;
	}

	public void setDiagnosisName(String diagnosisName) {
		this.diagnosisName = diagnosisName;
	}	
	
	public String getIcdCode() {
		return icdCode;
	}

	public void setIcdCode(String icdCode) {
		this.icdCode = icdCode;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
