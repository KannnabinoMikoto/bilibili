package org.bilibili.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bilibili.dao.GuangGaoDao;
import org.bilibili.entity.GuangGao;
import org.bilibili.util.BaseDao;

public class GuangGaoDaoImpl extends BaseDao implements GuangGaoDao{

	@Override
	public List<GuangGao> getAll() {
		// TODO Auto-generated method stub
		List<GuangGao> list=new ArrayList<GuangGao>();
		ResultSet rs=executeQuery("select * from guanggao",null);
		try {
			while (rs.next()) {	
				GuangGao gg=new GuangGao();
				gg.setGuangaoId(rs.getInt("guangaoId"));
				gg.setGuanggaopath(rs.getString("guanggaopath"));
				gg.setGuanggaomiaoshu(rs.getString("guanggaomiaoshu"));
				list.add(gg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean Update() {
		// TODO Auto-generated method stub
		return false;
	}

}
