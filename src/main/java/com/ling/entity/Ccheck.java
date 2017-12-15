package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 检查
 *
 */
public class Ccheck implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 检查ID */
	@TableId(type = IdType.AUTO)
	private Integer checkID;

	/** 检查室ID */
	private Integer checkDepartmentID;	

	/** 检查项目ID */
	private Integer checkItemID;

	/** 医生ID */
	private Integer doctorID;

	/** 病人ID */
	private Integer patientID;

	/** 检查单 */
	private String checkList;
	
	/** 申请日期 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date applyTime;

	/** 临床诊断 */
	private String clinicalDiagnosis;

	/** 简要历史 */
	private String briefHistory;

	/** 医生说明 */
	private String doctoNote;
	
	/** 检查所见 */
	private String checkSee;

	/** 检查结论 */
	private String checkConclusion;
	
	/** 报告日期 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date reportTime;
	
	/** 加急否 */
	private Integer urgent;

	/** 有效否 */
	private Integer effectiveNot;
	
	/** 外表Name字段 */
	
	/** 医生名称 */
	private String doctorName;
	
	/** 病人名称 */
	private String patientName;
	
	/** 检查室名称 */
	private String checkDepartmentName;
	
	/** 检查项目名称 */
	private String checkItemName;	

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

	public String getCheckDepartmentName() {
		return checkDepartmentName;
	}

	public void setCheckDepartmentName(String checkDepartmentName) {
		this.checkDepartmentName = checkDepartmentName;
	}

	public String getCheckItemName() {
		return checkItemName;
	}

	public void setCheckItemName(String checkItemName) {
		this.checkItemName = checkItemName;
	}
	
	public Date getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public Date getReportTime() {
		return reportTime;
	}

	public void setReportTime(Date reportTime) {
		this.reportTime = reportTime;
	}

	public Integer getCheckID() {
		return this.checkID;
	}

	public void setCheckID(Integer checkID) {
		this.checkID = checkID;
	}

	public Integer getCheckDepartmentID() {
		return this.checkDepartmentID;
	}

	public void setCheckDepartmentID(Integer checkDepartmentID) {
		this.checkDepartmentID = checkDepartmentID;
	}
	
	public Integer getCheckItemID() {
		return checkItemID;
	}

	public void setCheckItemID(Integer checkItemID) {
		this.checkItemID = checkItemID;
	}

	public String getCheckSee() {
		return checkSee;
	}

	public void setCheckSee(String checkSee) {
		this.checkSee = checkSee;
	}

	public String getCheckConclusion() {
		return checkConclusion;
	}

	public void setCheckConclusion(String checkConclusion) {
		this.checkConclusion = checkConclusion;
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

	public String getCheckList() {
		return this.checkList;
	}

	public void setCheckList(String checkList) {
		this.checkList = checkList;
	}

	public String getClinicalDiagnosis() {
		return this.clinicalDiagnosis;
	}

	public void setClinicalDiagnosis(String clinicalDiagnosis) {
		this.clinicalDiagnosis = clinicalDiagnosis;
	}

	public String getBriefHistory() {
		return this.briefHistory;
	}

	public void setBriefHistory(String briefHistory) {
		this.briefHistory = briefHistory;
	}

	public String getDoctoNote() {
		return this.doctoNote;
	}

	public void setDoctoNote(String doctoNote) {
		this.doctoNote = doctoNote;
	}
	
	public Integer getUrgent() {
		return urgent;
	}

	public void setUrgent(Integer urgent) {
		this.urgent = urgent;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
