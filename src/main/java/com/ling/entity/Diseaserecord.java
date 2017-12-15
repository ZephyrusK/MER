package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 病程记录
 *
 */
public class Diseaserecord implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 病程记录ID */
	@TableId(type = IdType.AUTO)
	private Integer diseaseRecordID;

	/** 医生ID */
	private Integer doctorID;

	/** 病人ID */
	private Integer patientID;

	/** 病程类型ID */
	private Integer courseTypeID;

	/** 上级医生ID */
	private Integer superiorDoctorID;

	/** 记录时间 */
	private Date recordTime;

	/** 病程内容 */
	private String diseaseContent;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getDiseaseRecordID() {
		return this.diseaseRecordID;
	}

	public void setDiseaseRecordID(Integer diseaseRecordID) {
		this.diseaseRecordID = diseaseRecordID;
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

	public Integer getCourseTypeID() {
		return this.courseTypeID;
	}

	public void setCourseTypeID(Integer courseTypeID) {
		this.courseTypeID = courseTypeID;
	}

	public Integer getSuperiorDoctorID() {
		return this.superiorDoctorID;
	}

	public void setSuperiorDoctorID(Integer superiorDoctorID) {
		this.superiorDoctorID = superiorDoctorID;
	}

	public Date getRecordTime() {
		return this.recordTime;
	}

	public void setRecordTime(Date recordTime) {
		this.recordTime = recordTime;
	}

	public String getDiseaseContent() {
		return this.diseaseContent;
	}

	public void setDiseaseContent(String diseaseContent) {
		this.diseaseContent = diseaseContent;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
