package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 诊断
 *
 */
public class Diagnosis implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 诊断ID */
	@TableId(type = IdType.AUTO)
	private Integer diagnosisID;

	/** 诊断类型ID */
	private Integer diagnosisTypeID;

	/** 诊断名ID */
	private Integer diagnosisNameID;

	/** 确诊人_医生ID */
	private Integer doctorID;

	/** 病人ID */
	private Integer patientID;

	/** 确诊时间 */
	private Date diagnosisTime;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getDiagnosisID() {
		return this.diagnosisID;
	}

	public void setDiagnosisID(Integer diagnosisID) {
		this.diagnosisID = diagnosisID;
	}

	public Integer getDiagnosisTypeID() {
		return this.diagnosisTypeID;
	}

	public void setDiagnosisTypeID(Integer diagnosisTypeID) {
		this.diagnosisTypeID = diagnosisTypeID;
	}

	public Integer getDiagnosisNameID() {
		return this.diagnosisNameID;
	}

	public void setDiagnosisNameID(Integer diagnosisNameID) {
		this.diagnosisNameID = diagnosisNameID;
	}

	public Integer getDoctorID() {
		return this.doctorID;
	}

	public void setDoctorID(Integer doctorID) {
		this.doctorID = doctorID;
	}

	public Integer getPatientID() {
		return this.patientID;
	}

	public void setPatientID(Integer patientID) {
		this.patientID = patientID;
	}

	public Date getDiagnosisTime() {
		return this.diagnosisTime;
	}

	public void setDiagnosisTime(Date diagnosisTime) {
		this.diagnosisTime = diagnosisTime;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
