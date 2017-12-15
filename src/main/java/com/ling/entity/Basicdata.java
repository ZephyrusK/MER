package com.ling.entity;

import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 基础资料
 *
 */
public class Basicdata implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 基础ID */
	@TableId(type = IdType.AUTO)
	private Integer basicID;

	/** 姓名 */
	private String name;

	/** 性别 */
	private Integer sex;

	/** 出生日期 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthdate;

	/** 年龄 */
	private Integer age;

	/** 血型 */
	private String blood;

	/** 身高 */
	private BigDecimal height;

	/** 体重 */
	private BigDecimal weight;

	/** 国籍 */
	private String nationality;

	/** 籍贯 */
	private String origin;

	/** 出生地 */
	private String birthplace;

	/** 民族 */
	private String nation;

	/** 文化程度 */
	private String culture;

	/** 宗教信仰 */
	private String religion;

	/** 婚姻状况 */
	private String marital;

	/** 身份证 */
	private String idcard;

	/** 有效否 */
	private Integer effectiveNot;
	
//	/** 病人ID */
//	private Integer patientID;	
//	
//	public Integer getPatientID() {
//		return patientID;
//	}
//
//	public void setPatientID(Integer patientID) {
//		this.patientID = patientID;
//	}

	public Integer getBasicID() {
		return this.basicID;
	}

	public void setBasicID(Integer basicID) {
		this.basicID = basicID;
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

	public Date getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getBlood() {
		return this.blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public BigDecimal getHeight() {
		return this.height;
	}

	public void setHeight(BigDecimal height) {
		this.height = height;
	}

	public BigDecimal getWeight() {
		return this.weight;
	}

	public void setWeight(BigDecimal weight) {
		this.weight = weight;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getOrigin() {
		return this.origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getBirthplace() {
		return this.birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getCulture() {
		return this.culture;
	}

	public void setCulture(String culture) {
		this.culture = culture;
	}

	public String getReligion() {
		return this.religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getMarital() {
		return this.marital;
	}

	public void setMarital(String marital) {
		this.marital = marital;
	}

	public String getIdcard() {
		return this.idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
