package org.bilibili.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.bilibili.dao.PinglunDao;
import org.bilibili.entity.Boom;
import org.bilibili.entity.Pinglun;
import org.bilibili.util.BaseDao;

public class PinglunDaoImpl extends BaseDao implements PinglunDao{

	@Override
	public List<Pinglun> getByVid(int Vid) {  //视频ID获得评论列表
		List<Pinglun> list=new ArrayList<Pinglun>();
		Pinglun v=null;
		ResultSet rs=executeQuery("select * from vediotaolun inner join UserInfo on vediotaolun.vediotaolunUid=UserInfo.AccountNo where vedioID=?",new Object[]{Vid});
		try {
			while (rs.next()) {
				v=new Pinglun();
				v.setVediotaolunUid(rs.getString("AccountName"));
				v.setVediotaolunText(rs.getString("vediotaolunText"));
				v.setVediotaoluntime(rs.getString("vediotaoluntime"));
				v.setPicturePath(rs.getString("PicturePath"));
				
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	
	}
	public boolean addPl(String pl,int vid,int uid){
		String sql="insert into vediotaolun values (?,?,?,?)";
		java.util.Date date=new java.util.Date();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		 String dateString = formatter.format(date);
		 Object params[]={vid,uid,pl,dateString};
		return executeUpdate(sql, params);	
	}
	
}
