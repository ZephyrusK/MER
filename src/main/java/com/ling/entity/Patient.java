package com.ling.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 病人
 *
 */
public class Patient implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 病人ID */
	@TableId(type = IdType.AUTO)
	private Integer patientID;

	/** 基础ID */
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
	
	
	
	

	/** 联系ID */
	private Integer contactID;
	
	/** 家庭地址 */
	private String homeAddress;

	/** 手机 */
	private String telephone;

	/** 固定电话 */
	private String mobilePhone;

	/** Email */
	private String email;

	/** 联系人姓名 */
	private String contactName;

	/** 关系 */
	private String relationship;

	/** 联系人住址 */
	private String contactAddress;

	/** 住址邮编 */
	private String zipCode;

	/** 联系人手机 */
	private String contactTelephone;

	/** 联系人固定电话 */
	private String contactMobilePhone;

	/** 联系人Email */
	private String contactEmail;
	
	
	

	/** 工作ID */
	private Integer workID;
	
	/** 职业 */
	private String occupation;

	/** 单位名称 */
	private String unitName;

	/** 单位电话 */
	private String unitTelephone;

	/** 单位地址 */
	private String unitAddress;

	/** 单位编码 */
	private String unitCode;
	
	
	

	/** 其他ID */
	private Integer otherID;
	
	/** 计费类型ID */
	private Integer chargeTypeID;

	/** 医保号 */
	private String medicalNum;

	/** 随访号 */
	private String followNum;

	/** 军人 */
	private String soldiers;

	/** 军兵种 */
	private String arms;
	
	

	/** 有效否 */
	private Integer effectiveNot;


	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public BigDecimal getHeight() {
		return height;
	}

	public void setHeight(BigDecimal height) {
		this.height = height;
	}

	public BigDecimal getWeight() {
		return weight;
	}

	public void setWeight(BigDecimal weight) {
		this.weight = weight;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getBirthplace() {
		return birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getCulture() {
		return culture;
	}

	public void setCulture(String culture) {
		this.culture = culture;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getMarital() {
		return marital;
	}

	public void setMarital(String marital) {
		this.marital = marital;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	public String getContactAddress() {
		return contactAddress;
	}

	public void setContactAddress(String contactAddress) {
		this.contactAddress = contactAddress;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getContactTelephone() {
		return contactTelephone;
	}

	public void setContactTelephone(String contactTelephone) {
		this.contactTelephone = contactTelephone;
	}

	public String getContactMobilePhone() {
		return contactMobilePhone;
	}

	public void setContactMobilePhone(String contactMobilePhone) {
		this.contactMobilePhone = contactMobilePhone;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getUnitTelephone() {
		return unitTelephone;
	}

	public void setUnitTelephone(String unitTelephone) {
		this.unitTelephone = unitTelephone;
	}

	public String getUnitAddress() {
		return unitAddress;
	}

	public void setUnitAddress(String unitAddress) {
		this.unitAddress = unitAddress;
	}

	public String getUnitCode() {
		return unitCode;
	}

	public void setUnitCode(String unitCode) {
		this.unitCode = unitCode;
	}

	public Integer getChargeTypeID() {
		return chargeTypeID;
	}

	public void setChargeTypeID(Integer chargeTypeID) {
		this.chargeTypeID = chargeTypeID;
	}

	public String getMedicalNum() {
		return medicalNum;
	}

	public void setMedicalNum(String medicalNum) {
		this.medicalNum = medicalNum;
	}

	public String getFollowNum() {
		return followNum;
	}

	public void setFollowNum(String followNum) {
		this.followNum = followNum;
	}

	public String getSoldiers() {
		return soldiers;
	}

	public void setSoldiers(String soldiers) {
		this.soldiers = soldiers;
	}

	public String getArms() {
		return arms;
	}

	public void setArms(String arms) {
		this.arms = arms;
	}

	public Integer getPatientID() {
		return this.patientID;
	}

	public void setPatientID(Integer patientID) {
		this.patientID = patientID;
	}

	public Integer getBasicID() {
		return this.basicID;
	}

	public void setBasicID(Integer basicID) {
		this.basicID = basicID;
	}

	public Integer getContactID() {
		return this.contactID;
	}

	public void setContactID(Integer contactID) {
		this.contactID = contactID;
	}

	public Integer getWorkID() {
		return this.workID;
	}

	public void setWorkID(Integer workID) {
		this.workID = workID;
	}

	public Integer getOtherID() {
		return this.otherID;
	}

	public void setOtherID(Integer otherID) {
		this.otherID = otherID;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
