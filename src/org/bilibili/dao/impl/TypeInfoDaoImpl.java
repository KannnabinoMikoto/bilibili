package org.bilibili.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.bilibili.dao.TypeInfoDao;
import org.bilibili.entity.TypeInfo;
import org.bilibili.util.BaseDao;

public class TypeInfoDaoImpl extends BaseDao implements TypeInfoDao{

	@Override
	public String getTypeByVtid(int vyid) {
		TypeInfo ti=null;
		String VideoTypeName="";
		String sql="select VideoTypeName from VideoInfoType where VideoTypeNo=?";
		Object parasms[]={vyid};
		ResultSet rs=executeQuery(sql, parasms);
		try {
			if (rs.next()) {
				ti=new TypeInfo();
				ti.setVideoTypeName(rs.getString("VideoTypeName"));
				VideoTypeName=ti.getVideoTypeName();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return VideoTypeName;
	}

}
