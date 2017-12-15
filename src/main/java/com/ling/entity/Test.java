package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 检验
 *
 */
public class Test implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 检验ID */
	@TableId(type = IdType.AUTO)
	private Integer testID;

	/** 医生ID */
	private Integer doctorID;
	
	/** 医生姓名 */
	private String doctorName;

	/** 病人ID */
	private Integer patientID;
	
	/** 病人姓名 */
	private String patientName;

	/** 样本ID */
	private Integer sampleID;
	
	/** 样本MC */
	private String sampleName;
	
	/** 申请时间 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private String applyTime;

	/** 检验名 */
	private String testName;

	/** 备注 */
	private String remark;
	
	/** 报告时间 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date reportTime;

	/** 加急否 */
	private Integer urgent;
	
	/** 有效否 */
	private Integer effectiveNot;	

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getSampleName() {
		return sampleName;
	}

	public void setSampleName(String sampleName) {
		this.sampleName = sampleName;
	}

	public Integer getTestID() {
		return this.testID;
	}

	public void setTestID(Integer testID) {
		this.testID = testID;
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

	public Integer getSampleID() {
		return sampleID;
	}

	public void setSampleID(Integer sampleID) {
		this.sampleID = sampleID;
	}
	
	public String getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(String applyTime) {
		this.applyTime = applyTime;
	}

	public Date getReportTime() {
		return reportTime;
	}

	public void setReportTime(Date reportTime) {
		this.reportTime = reportTime;
	}

	public Integer getUrgent() {
		return urgent;
	}

	public void setUrgent(Integer urgent) {
		this.urgent = urgent;
	}

	public String getTestName() {
		return this.testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
