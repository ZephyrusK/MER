package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 样本
 *
 */
public class Sample implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 样本ID */
	@TableId(type = IdType.AUTO)
	private Integer sampleID;

	/** 样本名称 */
	private String sampleName;

	/** 有效否 */
	private Integer effectiveNot;

	public Integer getSampleID() {
		return sampleID;
	}

	public void setSampleID(Integer sampleID) {
		this.sampleID = sampleID;
	}

	public String getSampleName() {
		return sampleName;
	}

	public void setSampleName(String sampleName) {
		this.sampleName = sampleName;
	}

	public Integer getEffectiveNot() {
		return effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}
}
