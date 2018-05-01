package org.bilibili.entity;

public class Pinglun {
	private int vedioID;//视频编号
	private String vediotaolunUid;//发送评论的用户
	private String picturePath;//发送评论的用户的头像
	private String vediotaolunText;//发送评论的内容
	private String vediotaoluntime;//发送评论的时间
	
	public String getPicturePath() {
		return picturePath;
	}
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
	public int getVedioID() {
		return vedioID;
	}
	public void setVedioID(int vedioID) {
		this.vedioID = vedioID;
	}
	public String getVediotaolunUid() {
		return vediotaolunUid;
	}
	public void setVediotaolunUid(String vediotaolunUid) {
		this.vediotaolunUid = vediotaolunUid;
	}
	public String getVediotaolunText() {
		return vediotaolunText;
	}
	public void setVediotaolunText(String vediotaolunText) {
		this.vediotaolunText = vediotaolunText;
	}
	public String getVediotaoluntime() {
		return vediotaoluntime;
	}
	public void setVediotaoluntime(String vediotaoluntime) {
		this.vediotaoluntime = vediotaoluntime;
	}
	
}
