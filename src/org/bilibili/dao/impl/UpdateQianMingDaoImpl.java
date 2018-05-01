package org.bilibili.dao.impl;

import org.bilibili.util.BaseDao;

public class UpdateQianMingDaoImpl extends BaseDao{

		public boolean updateqm(String qm,int uid){
			String sql="update UserInfo set  AccountAddress=? where AccountNo=?";
			Object params[]={qm,uid};
			return executeUpdate(sql, params);
		}
}
