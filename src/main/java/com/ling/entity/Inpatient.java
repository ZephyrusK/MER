package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 住院
 *
 */
public class Inpatient implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 住院ID */
	@TableId(type = IdType.AUTO)
	private Integer inpatientID;

	/** 病人ID */
	private Integer patientID;

	/** 医生ID */
	private Integer doctorID;

	/** 区域ID */
	private Integer regionalID;

	/** 床号 */
	private Integer bedNum;

	/** 入院时间 */
	private Date admissionTime;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getInpatientID() {
		return this.inpatientID;
	}

	public void setInpatientID(Integer inpatientID) {
		this.inpatientID = inpatientID;
	}

	public Integer getPatientID() {
		return this.patientID;
	}

	public void setPatientID(Integer patientID) {
		this.patientID = patientID;
	}

	public Integer getDoctorID() {
		return this.doctorID;
	}

	public void setDoctorID(Integer doctorID) {
		this.doctorID = doctorID;
	}

	public Integer getRegionalID() {
		return this.regionalID;
	}

	public void setRegionalID(Integer regionalID) {
		this.regionalID = regionalID;
	}

	public Integer getBedNum() {
		return this.bedNum;
	}

	public void setBedNum(Integer bedNum) {
		this.bedNum = bedNum;
	}

	public Date getAdmissionTime() {
		return this.admissionTime;
	}

	public void setAdmissionTime(Date admissionTime) {
		this.admissionTime = admissionTime;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
