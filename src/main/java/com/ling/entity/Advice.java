package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 医嘱
 *
 */
public class Advice implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 医嘱ID */
	@TableId(type = IdType.AUTO)
	private Integer adviceID;

	/** 医嘱类型ID */
	private Integer adviceTypeID;

	/** 医嘱类别ID */
	private Integer adviceCategoryID;

	/** 药物ID */
	private Integer drugID;

	/** 频率ID */
	private Integer frequencyID;

	/** 医生ID */
	private Integer doctorID;

	/** 病人ID */
	private Integer patientID;

	/** 开始时间 */
	private Date startTime;

	/** 剂量 */
	private Integer dose;
	
	/** 天数/剂数 */
	private Integer dayNum;

	/** 总量 */
	private Integer total;
	
	/** 医生说明 */
	private String doctoNote;

	/** 有效否 */
	private Integer effectiveNot;

	public Integer getAdviceID() {
		return adviceID;
	}

	public void setAdviceID(Integer adviceID) {
		this.adviceID = adviceID;
	}

	public Integer getAdviceTypeID() {
		return adviceTypeID;
	}

	public void setAdviceTypeID(Integer adviceTypeID) {
		this.adviceTypeID = adviceTypeID;
	}

	public Integer getAdviceCategoryID() {
		return adviceCategoryID;
	}

	public void setAdviceCategoryID(Integer adviceCategoryID) {
		this.adviceCategoryID = adviceCategoryID;
	}

	public Integer getDrugID() {
		return drugID;
	}

	public void setDrugID(Integer drugID) {
		this.drugID = drugID;
	}

	public Integer getFrequencyID() {
		return frequencyID;
	}

	public void setFrequencyID(Integer frequencyID) {
		this.frequencyID = frequencyID;
	}

	public Integer getDoctorID() {
		return doctorID;
	}

	public void setDoctorID(Integer doctorID) {
		this.doctorID = doctorID;
	}

	public Integer getPatientID() {
		return patientID;
	}

	public void setPatientID(Integer patientID) {
		this.patientID = patientID;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Integer getDose() {
		return dose;
	}

	public void setDose(Integer dose) {
		this.dose = dose;
	}

	public Integer getDayNum() {
		return dayNum;
	}

	public void setDayNum(Integer dayNum) {
		this.dayNum = dayNum;
	}
	
	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getDoctoNote() {
		return doctoNote;
	}

	public void setDoctoNote(String doctoNote) {
		this.doctoNote = doctoNote;
	}

	public Integer getEffectiveNot() {
		return effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}
}
