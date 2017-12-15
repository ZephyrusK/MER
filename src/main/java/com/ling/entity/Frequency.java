package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;


/**
 * 
 * 频率
 *
 */


public class Frequency implements Serializable{

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;
	
	/** 频率ID */
	@TableId(type = IdType.AUTO)
	private Integer frequencyID;

	/** 频率名称 */
	private String frequencyName;

	/** 有效否 */
	private Integer effectiveNot;

	public Integer getFrequencyID() {
		return frequencyID;
	}

	public void setFrequencyID(Integer frequencyID) {
		this.frequencyID = frequencyID;
	}

	public String getFrequencyName() {
		return frequencyName;
	}

	public void setFrequencyName(String frequencyName) {
		this.frequencyName = frequencyName;
	}

	public Integer getEffectiveNot() {
		return effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}
}
