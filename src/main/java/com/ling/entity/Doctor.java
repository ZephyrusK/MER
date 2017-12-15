package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 用户
 *
 */
public class Doctor implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 用户ID */
	@TableId(type = IdType.AUTO)
	private Integer doctorID;

	/** 医务人员ID */
	private Integer medicalStaffID;

	/** 职称ID */
	private Integer titleID;

	/** 科室ID */
	private Integer departmentID;

	/** 诊疗组ID */
	private Integer treatmentGroupID;

	/** 姓名 */
	private String name;

	/** 密码 */
	private String password;

	/** 有效否 */
	private Integer effectiveNot;
	
	
	
	/** 职称--名称 */
	private String titleName;

	/** 科室--名称 */
	private String departmentName;

	/** 诊疗组--名称 */
	private String groupName;	

	public String getTitleName() {
		return titleName;
	}

	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public Integer getDoctorID() {
		return this.doctorID;
	}

	public void setDoctorID(Integer doctorID) {
		this.doctorID = doctorID;
	}

	public Integer getMedicalStaffID() {
		return this.medicalStaffID;
	}

	public void setMedicalStaffID(Integer medicalStaffID) {
		this.medicalStaffID = medicalStaffID;
	}

	public Integer getTitleID() {
		return this.titleID;
	}

	public void setTitleID(Integer titleID) {
		this.titleID = titleID;
	}

	public Integer getDepartmentID() {
		return this.departmentID;
	}

	public void setDepartmentID(Integer departmentID) {
		this.departmentID = departmentID;
	}

	public Integer getTreatmentGroupID() {
		return this.treatmentGroupID;
	}

	public void setTreatmentGroupID(Integer treatmentGroupID) {
		this.treatmentGroupID = treatmentGroupID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
