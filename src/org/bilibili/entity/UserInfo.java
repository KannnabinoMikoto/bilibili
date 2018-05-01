package org.bilibili.entity;

import java.sql.Date;

public class UserInfo {
	private int AccountNo;// 账户UID
	private String AccountName;//账户昵称
	private String AccountPwd;//账户密码
	private String PicturePath ;///用户头像（可默认）
	private int AccountSex ;//外键性别（0男 1女 这里不建额外的表了，用业务逻辑判断）
	private String AccountEmail;//用户邮箱
	private String AccountBirthday;//用户出生
	private String AccountAddress;//家庭住址选填
	private int AccountBandPhotoorQQ ;//用户绑定手机号码或者QQ
	private int AccountType;//用户权限等级(外键)   2=用户
	private int AccountExecpteOr ;//账号状态是否异常，默认无异常0(非外键)
	private int Accountyingbi; //硬币数量 用于献给喜欢的UP 软通货
	
	public int getAccountyingbi() {
		return Accountyingbi;
	}
	public void setAccountyingbi(int accountyingbi) {
		Accountyingbi = accountyingbi;
	}
	public int getAccountNo() {
		return AccountNo;
	}
	public void setAccountNo(int accountNo) {
		this.AccountNo = accountNo;
	}
	public String getAccountName() {
		return AccountName;
	}
	public void setAccountName(String accountName) {
		AccountName = accountName;
	}
	public String getAccountPwd() {
		return AccountPwd;
	}
	public void setAccountPwd(String accountPwd) {
		AccountPwd = accountPwd;
	}
	public String getPicturePath() {
		return PicturePath;
	}
	public void setPicturePath(String picturePath) {
		PicturePath = picturePath;
	}
	public int getAccountSex() {
		return AccountSex;
	}
	public void setAccountSex(int accountSex) {
		AccountSex = accountSex;
	}
	public String getAccountEmail() {
		return AccountEmail;
	}
	public void setAccountEmail(String accountEmail) {
		AccountEmail = accountEmail;
	}
	public String getAccountBirthday() {
		return AccountBirthday;
	}
	public void setAccountBirthday(String accountBirthday) {
		AccountBirthday = accountBirthday;
	}
	public String getAccountAddress() {
		return AccountAddress;
	}
	public void setAccountAddress(String accountAddress) {
		AccountAddress = accountAddress;
	}
	public int getAccountBandPhotoorQQ() {
		return AccountBandPhotoorQQ;
	}
	public void setAccountBandPhotoorQQ(int accountBandPhotoorQQ) {
		AccountBandPhotoorQQ = accountBandPhotoorQQ;
	}
	public int getAccountType() {
		return AccountType;
	}
	public void setAccountType(int accountType) {
		AccountType = accountType;
	}
	public int getAccountExecpteOr() {
		return AccountExecpteOr;
	}
	public void setAccountExecpteOr(int accountExecpteOr) {
		AccountExecpteOr = accountExecpteOr;
	}
	
	
}
