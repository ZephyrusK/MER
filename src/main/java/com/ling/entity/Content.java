package com.ling.entity;

import java.io.Serializable;
/**
 * 
 * @author ling
 * @category 内容 字段 组成 成员
 */
public class Content implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** 主诉 */
	private String ZhuSu;

	/** 现病史 */
	private String XianBingShi;

	/** 既往史 */
	private String JiWangShi;
	
	/** 个人史 */
	private String GeRenShi;

	/** 家族史 */
	private String JiaZuShi;

	/** 体格检查 */
	private String TiGeJianCha;

	/** 专科检查 */
	private String ZhuanKeJianCha;

	/** 辅助检查 */
	private String FuZhuJianCha;

	public String getZhuSu() {
		return ZhuSu;
	}

	public void setZhuSu(String zhuSu) {
		ZhuSu = zhuSu;
	}

	public String getXianBingShi() {
		return XianBingShi;
	}

	public void setXianBingShi(String xianBingShi) {
		XianBingShi = xianBingShi;
	}

	public String getJiWangShi() {
		return JiWangShi;
	}

	public void setJiWangShi(String jiWangShi) {
		JiWangShi = jiWangShi;
	}

	public String getGeRenShi() {
		return GeRenShi;
	}

	public void setGeRenShi(String geRenShi) {
		GeRenShi = geRenShi;
	}

	public String getJiaZuShi() {
		return JiaZuShi;
	}

	public void setJiaZuShi(String jiaZuShi) {
		JiaZuShi = jiaZuShi;
	}

	public String getTiGeJianCha() {
		return TiGeJianCha;
	}

	public void setTiGeJianCha(String tiGeJianCha) {
		TiGeJianCha = tiGeJianCha;
	}

	public String getZhuanKeJianCha() {
		return ZhuanKeJianCha;
	}

	public void setZhuanKeJianCha(String zhuanKeJianCha) {
		ZhuanKeJianCha = zhuanKeJianCha;
	}

	public String getFuZhuJianCha() {
		return FuZhuJianCha;
	}

	public void setFuZhuJianCha(String fuZhuJianCha) {
		FuZhuJianCha = fuZhuJianCha;
	}
	
}
