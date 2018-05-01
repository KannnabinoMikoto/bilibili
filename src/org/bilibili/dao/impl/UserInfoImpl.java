package org.bilibili.dao.impl;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.bilibili.dao.UserInfoDao;
import org.bilibili.entity.UserInfo;
import org.bilibili.util.BaseDao;

public class UserInfoImpl extends BaseDao implements UserInfoDao {

	@Override
	public UserInfo Info(UserInfo u) {
		// TODO Auto-generated method stub
		ResultSet rs= executeQuery("select * from UserInfo where AccountName=? and AccountPwd=?",new Object[]{u.getAccountName(),u.getAccountPwd()});
		UserInfo ui=null;
		try {
			if (rs.next()) {
				ui=new UserInfo();
				ui.setAccountNo(rs.getInt("AccountNo"));
				ui.setAccountName(rs.getString("AccountName"));
				ui.setAccountPwd(rs.getString("AccountPwd"));
				ui.setPicturePath(rs.getString("PicturePath"));
				ui.setAccountSex(rs.getInt("AccountSex"));
				ui.setAccountEmail(rs.getString("AccountEmail"));
				ui.setAccountBirthday(rs.getString("AccountBirthday"));
				ui.setAccountAddress(rs.getString("AccountAddress"));
				ui.setAccountBandPhotoorQQ(rs.getInt("AccountBandPhotoorQQ"));
				ui.setAccountType(rs.getInt("AccountType"));
				ui.setAccountExecpteOr(rs.getInt("AccountExecpteOr"));	
				ui.setAccountyingbi(rs.getInt("Accountyingbi"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ui;
	}
	
	public UserInfo InfoById(int uid) {
		// TODO Auto-generated method stub
		ResultSet rs= executeQuery("select * from UserInfo where AccountNo=?",new Object[]{uid});
		UserInfo ui=null;
		try {
			if (rs.next()) {
				ui=new UserInfo();
				ui.setAccountNo(rs.getInt("AccountNo"));
				ui.setAccountName(rs.getString("AccountName"));
				ui.setAccountPwd(rs.getString("AccountPwd"));
				ui.setPicturePath(rs.getString("PicturePath"));
				ui.setAccountSex(rs.getInt("AccountSex"));
				ui.setAccountEmail(rs.getString("AccountEmail"));
				ui.setAccountBirthday(rs.getString("AccountBirthday"));
				ui.setAccountAddress(rs.getString("AccountAddress"));
				ui.setAccountBandPhotoorQQ(rs.getInt("AccountBandPhotoorQQ"));
				ui.setAccountType(rs.getInt("AccountType"));
				ui.setAccountExecpteOr(rs.getInt("AccountExecpteOr"));	
				ui.setAccountyingbi(rs.getInt("Accountyingbi"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ui;
	}

	@Override
	public boolean addUserInfo(UserInfo u) {
		// TODO Auto-generated method stub
		//('张三','123456',default,0,'zhangsan@qq.com','2000-01-01','北京',714111186,2,default,default)
		String sql="insert into UserInfo values (?,?,?,?,?,?,?,?,2,0,default)";
		Object params[]={u.getAccountName(),u.getAccountPwd(),u.getPicturePath(),u.getAccountSex(),u.getAccountEmail(),u.getAccountBirthday(),u.getAccountAddress(),u.getAccountBandPhotoorQQ()};
		return executeUpdate(sql, params);
	}

	@Override
	public boolean chenckuserinfo(String username) {
		// TODO Auto-generated method stub
		 ResultSet rs=executeQuery("select * from UserInfo where AccountName=? ",new Object[]{username});
		 try {
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
				return false;
			
	}

	@Override
	public boolean shoucang(int userid,int vedio) {
		// TODO Auto-generated method stub
		String sql="insert into vedioshoucang values (?,?,?)";
		 java.util.Date date=new java.util.Date();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		 String dateString = formatter.format(date);
		Object params[]={userid,vedio,dateString};
		return executeUpdate(sql, params);
	}

	@Override
	public List<UserInfo> getalluser() {
		ResultSet rs= executeQuery("select * from UserInfo",null);
		List<UserInfo> list=new ArrayList<UserInfo>();
		UserInfo ui=null;
		try {
			while (rs.next()) {
				ui=new UserInfo();
				ui.setAccountNo(rs.getInt("AccountNo"));
				ui.setAccountName(rs.getString("AccountName"));
				ui.setAccountPwd(rs.getString("AccountPwd"));
				ui.setPicturePath(rs.getString("PicturePath"));
				ui.setAccountSex(rs.getInt("AccountSex"));
				ui.setAccountEmail(rs.getString("AccountEmail"));
				ui.setAccountBirthday(rs.getString("AccountBirthday"));
				ui.setAccountAddress(rs.getString("AccountAddress"));
				ui.setAccountBandPhotoorQQ(rs.getInt("AccountBandPhotoorQQ"));
				ui.setAccountType(rs.getInt("AccountType"));
				ui.setAccountExecpteOr(rs.getInt("AccountExecpteOr"));	
				ui.setAccountyingbi(rs.getInt("Accountyingbi"));
				list.add(ui);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}

}
