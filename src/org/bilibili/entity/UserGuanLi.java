package org.bilibili.entity;

public class UserGuanLi {
	private int accountNo;//用户UID
	private String accountName;//用户昵称
	private String PicturePath;//用户头像路径
	private int howLong;//封号时间
	private String riYou; //封号理由
	public int getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getPicturePath() {
		return PicturePath;
	}
	public void setPicturePath(String picturePath) {
		PicturePath = picturePath;
	}
	public int getHowLong() {
		return howLong;
	}
	public void setHowLong(int howLong) {
		this.howLong = howLong;
	}
	public String getRiYou() {
		return riYou;
	}
	public void setRiYou(String riYou) {
		this.riYou = riYou;
	}
	
	
}
