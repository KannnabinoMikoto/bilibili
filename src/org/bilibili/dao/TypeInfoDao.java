package org.bilibili.dao;

public interface TypeInfoDao {
	//根据视频的分类编号查询类型名称
	String getTypeByVtid(int vyid);
}
