package org.bilibili.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bilibili.dao.LIshiDao;
import org.bilibili.dao.UserGuanLiDao;
import org.bilibili.entity.Lishi;
import org.bilibili.entity.UserGuanLi;
import org.bilibili.util.BaseDao;

public class UserGuanLiDaoImpl extends BaseDao implements UserGuanLiDao{

	@Override
	public List<UserGuanLi> getAll() {
		String sql="select * from UserInfo inner join BlackRoom on UserInfo.AccountNo=BlackRoom.AccountNo where UserInfo.AccountNo in (select AccountNo from BlackRoom )";
		List<UserGuanLi> list=new ArrayList<UserGuanLi>();
		UserGuanLi u=null;
		ResultSet rs=executeQuery(sql, null);
		try {
			while (rs.next()) {
				u=new UserGuanLi();
				u.setAccountNo(rs.getInt("AccountNo"));
				u.setAccountName(rs.getString("AccountName"));
				u.setPicturePath(rs.getString("PicturePath"));
				u.setHowLong(rs.getInt("HowLong"));
				u.setRiYou(rs.getString("RiYou"));
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean deleteU(int ui) {
		// TODO Auto-generated method stub
		String sql="delete from BlackRoom where AccountNo=?";
		return executeUpdate(sql, new Object[]{ui});
	}
		


}
