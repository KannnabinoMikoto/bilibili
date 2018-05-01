package org.bilibili.dao;

import java.util.List;

import org.bilibili.entity.GuangGao;

public interface GuangGaoDao {
	List<GuangGao> getAll();//获得所有广告的路径 不论尺寸
	boolean Update();//用于修改操作
}
