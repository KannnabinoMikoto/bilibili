package org.bilibili.dao;

import java.util.List;

import org.bilibili.entity.UserInfo;

public interface UserInfoDao {
	boolean addUserInfo(UserInfo u);
	UserInfo Info(UserInfo u);
	boolean chenckuserinfo(String username);
	boolean shoucang(int userid,int vedio);
	UserInfo InfoById(int uid);
	List<UserInfo> getalluser();
}
