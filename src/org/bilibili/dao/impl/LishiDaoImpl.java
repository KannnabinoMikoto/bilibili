package org.bilibili.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.bilibili.dao.LIshiDao;
import org.bilibili.entity.Lishi;
import org.bilibili.util.BaseDao;

public class LishiDaoImpl extends BaseDao implements LIshiDao {

	@Override
	public List<Lishi> getAllByUid(int Uid) {
		String sql="select vediohistroy.vediohistroyvediotime,VideoInfo.VideoName,VideoInfo.Videofengman,UserInfo.AccountName,VideoInfoType.VideoTypeName from vediohistroy inner join  VideoInfo on vediohistroy.vediohistroyvedioID=VideoInfo.VideoID inner join UserInfo on VideoInfo.VideoAccount=UserInfo.AccountNo inner join VideoInfoType on VideoInfo.VideoType=VideoInfoType.VideoTypeNo where vediohistroyAccount=?";
		ResultSet rs=executeQuery(sql, new Object[]{Uid});
		List<Lishi> list=new ArrayList<Lishi>();
		Lishi ls=null;
		try {
			while(rs.next()){
				ls=new Lishi();		
				ls.setVediohistroyvediotime(rs.getString("Vediohistroyvediotime"));
				ls.setVideofengman(rs.getString("Videofengman"));
				ls.setVideoName(rs.getString("VideoName"));
				ls.setAccountName(rs.getString("AccountName"));
				ls.setVideoTypeName(rs.getString("VideoTypeName"));
				list.add(ls);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean addLishi(int userID,int VedioId) {
		// TODO Auto-generated method stub
		String sql="insert into vediohistroy values (?,?,?)";
		java.util.Date date=new java.util.Date();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		 String dateString = formatter.format(date);
		Object params[]={userID,VedioId,dateString};
		return executeUpdate(sql, params);
	}

	@Override
	public boolean deleteLishi(int userid) {
		// TODO Auto-generated method stub
		String sql="delete from vediohistroy where vediohistroyAccount=?";
		return executeUpdate(sql, new Object[]{userid});
	}
	
}
