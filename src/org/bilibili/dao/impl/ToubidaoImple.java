package org.bilibili.dao.impl;

import org.bilibili.util.BaseDao;

public class ToubidaoImple extends BaseDao{
	public boolean toubi(int vid){
		String sql="update VideoInfo set Videoyingbi=Videoyingbi+100 where VideoID=?";
		return executeUpdate(sql, new Object[]{vid});
		
	}
}
