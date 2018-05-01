package org.bilibili.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bilibili.entity.Boom;

import org.bilibili.util.BaseDao;

public class BoomDaoImpl extends BaseDao{
	
	public List<Boom> getBoom(){
		// TODO Auto-generated method stub
				List<Boom> list=new ArrayList<Boom>();
				Boom v=null;
				ResultSet rs=executeQuery("select * from vedioBoom",null);
				try {
					while (rs.next()) {
						v=new Boom();
						v.setVedioBoomtime(rs.getString("vedioBoomtime"));
						v.setVedioBoomText(rs.getString("vedioBoomText"));
						list.add(v);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return list;
	} 
}
