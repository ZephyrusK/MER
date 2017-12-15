package com.ling.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 *
 * 模板
 *
 */
public class Template implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 文本模板ID */
	@TableId(type = IdType.AUTO)
	private Integer textTemplateID;

	/** 模板名称 */
	private String templateName;

	/** 父ID */
	private Integer fatherID;

	/** 内容 */
	private String content;

	/** 有效否 */
	private Integer effectiveNot;


	public Integer getTextTemplateID() {
		return this.textTemplateID;
	}

	public void setTextTemplateID(Integer textTemplateID) {
		this.textTemplateID = textTemplateID;
	}

	public String getTemplateName() {
		return this.templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public Integer getFatherID() {
		return this.fatherID;
	}

	public void setFatherID(Integer fatherID) {
		this.fatherID = fatherID;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getEffectiveNot() {
		return this.effectiveNot;
	}

	public void setEffectiveNot(Integer effectiveNot) {
		this.effectiveNot = effectiveNot;
	}

}
