package org.bilibili.util;

import java.util.ArrayList;
import java.util.List;

public class PageBean<E> {
	private int videopage;//当前页
	private int videoCount;//当前页显示的条数
	private int tableCount;//总条数
	private int totalPage;//总页数
	private List<E> videoList=new ArrayList<E>();
	public int getVideopage() {
		return videopage;
	}
	public void setVideopage(int videopage) {
		this.videopage = videopage;
	}
	public int getVideoCount() {
		return videoCount;
	}
	public void setVideoCount(int videoCount) {
		this.videoCount = videoCount;
	}
	public int getTableCount() {
		return tableCount;
	}
	public void setTableCount(int tableCount) {
		this.tableCount = tableCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<E> getVideoList() {
		return videoList;
	}
	public void setVideoList(List<E> videoList) {
		this.videoList = videoList;
	}
	
}
