package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
*
* 过敏
*
*/

public class Allergic implements  Serializable{
	
	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 过敏ID */
	@TableId(type = IdType.AUTO)
	private Integer allergicID;

	/** 过敏类型ID */
	private Integer allergicTypeID;
	
	/** 过敏名称 */
	private String allergicTypeName;
	
	/** 病人ID */
	private Integer patientID;
	
	/** 医生ID */
	private Integer doctorID;
	
	/** 过敏描述 */
	private String allergicDescribe;
	
	/** 有效否 */
	private Integer effectiveNot;

	public Integer getAllergicID() {
		return allergicID;
	}

	public void setAllergicID(Integer allergicID) {
		this.allergicID = allergicID;
	}

	public Integer getAllergicTypeID() {
		return allergicTypeID;
	}

	public void setAllergicTypeID(Integer allergicTypeID) {
		this.allergicTypeID = allergicTypeID;
	}

	public String getAllergicTypeName() {
		return allergicTypeName;
	}

	public void setAllergicTypeName(String allergicTypeName) {
		this.allergicTypeName = allergicTypeName;
	}

	public Integer getPatientID() {
		return patientID;
	}

	public void setPatientID(Integer patientID) {
		this.patientID = patientID;
	}

	public Integer getDoctorID() {
		return doctorID;
	}

	public void setDoctorID(Integer doctorID) {
		this.doctorID = doctorID;
	}

	public String getAllergicDescribe() {
		return allergicDescribe;
	}

	public void setAllergicDescribe(String allergicDescribe) {
		this.allergicDescribe = allergicDescribe;
	}

	public Integer getEffectiveNot() {
		return effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}	
}
