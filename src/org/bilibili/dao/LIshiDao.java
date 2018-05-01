package org.bilibili.dao;

import java.util.List;

import org.bilibili.entity.Lishi;

public interface LIshiDao {
	List<Lishi> getAllByUid(int Uid);
	boolean addLishi(int userid ,int VedioID);
	boolean deleteLishi(int userid);
}
