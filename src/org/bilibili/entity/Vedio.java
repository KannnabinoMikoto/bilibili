package org.bilibili.entity;

import java.sql.Date;

public class Vedio {
	private int videoId;//视频编号
	private String videoName;//视频名称
	private int videoAccount;//视频作者【需要链表】
	private Date videoDate;//上传日期
	private String VideoType;//视频分类【需要链表】
	private String videoPath;//视频路径
	private String videoBiaoQian;//视频标签
	private String videoText;//视频描述
	private int videoshoucang;//视频收藏数
	private int videoyingbi;//视频硬币数
	private int videoshenhe;//视频审核通过状态
	private String Videofengman;//视频封面
	

	
	public int getVideoshenhe() {
		return videoshenhe;
	}
	public void setVideoshenhe(int videoshenhe) {
		this.videoshenhe = videoshenhe;
	}
	public String getVideofengman() {
		return Videofengman;
	}
	public void setVideofengman(String videofengman) {
		Videofengman = videofengman;
	}
	public int getVideoId() {
		return videoId;
	}
	public void setVideoId(int videoId) {
		this.videoId = videoId;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public int getVideoAccount() {
		return videoAccount;
	}
	public void setVideoAccount(int videoAccount) {
		this.videoAccount = videoAccount;
	}
	public Date getVideoDate() {
		return videoDate;
	}
	public void setVideoDate(Date videoDate) {
		this.videoDate = videoDate;
	}
	public String getVideoType() {
		return VideoType;
	}
	public void setVideoType(String videoType) {
		VideoType = videoType;
	}
	public String getVideoPath() {
		return videoPath;
	}
	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}
	public String getVideoBiaoQian() {
		return videoBiaoQian;
	}
	public void setVideoBiaoQian(String videoBiaoQian) {
		this.videoBiaoQian = videoBiaoQian;
	}
	public String getVideoText() {
		return videoText;
	}
	public void setVideoText(String videoText) {
		this.videoText = videoText;
	}
	public int getVideoshoucang() {
		return videoshoucang;
	}
	public void setVideoshoucang(int videoshoucang) {
		this.videoshoucang = videoshoucang;
	}
	public int getVideoyingbi() {
		return videoyingbi;
	}
	public void setVideoyingbi(int videoyingbi) {
		this.videoyingbi = videoyingbi;
	}
	
}


