package org.bilibili.dao;

import java.util.List;

import org.bilibili.entity.Pinglun;

public interface PinglunDao {
	List<Pinglun> getByVid(int Vid);
	boolean addPl(String pl,int vid,int uid);
}
