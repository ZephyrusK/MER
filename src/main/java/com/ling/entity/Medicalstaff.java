package com.ling.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 医务人员
 *
 */
public class Medicalstaff implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 医务人员ID */
	@TableId(type = IdType.AUTO)
	private Integer medicalStaffID;

	/** 学历学位ID */
	private Integer academicID;

	/** 姓名 */
	private String name;

	/** 性别 */
	private Integer sex;

	/** 民族 */
	private String nationality;

	/** 籍贯 */
	private String birth;

	/** 出生日期 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthdate;

	/** 参加工作时间 */
	private Date toWorkTime;

	/** 身份证 */
	private String idcard;

	/** 电话号码 */
	private String phone;

	/** 毕业学校 */
	private String graduateSchool;

	/** 专业 */
	private String professional;

	/** 有效否 */
	private Integer effectiveNot;

	
	/** 学历学位----Name */
	private String academicName;
	
	
	
	public String getAcademicName() {
		return academicName;
	}

	public void setAcademicName(String academicName) {
		this.academicName = academicName;
	}

	public Integer getMedicalStaffID() {
		return this.medicalStaffID;
	}

	public void setMedicalStaffID(Integer medicalStaffID) {
		this.medicalStaffID = medicalStaffID;
	}

	public Integer getAcademicID() {
		return this.academicID;
	}

	public void setAcademicID(Integer academicID) {
		this.academicID = academicID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public Date getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public Date getToWorkTime() {
		return this.toWorkTime;
	}

	public void setToWorkTime(Date toWorkTime) {
		this.toWorkTime = toWorkTime;
	}

	public String getIdcard() {
		return this.idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGraduateSchool() {
		return this.graduateSchool;
	}

	public void setGraduateSchool(String graduateSchool) {
		this.graduateSchool = graduateSchool;
	}

	public String getProfessional() {
		return this.professional;
	}

	public void setProfessional(String professional) {
		this.professional = professional;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
