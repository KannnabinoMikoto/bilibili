package org.bilibili.dao;
import java.util.List;

import org.bilibili.entity.UserGuanLi;;

public interface UserGuanLiDao {

	List<UserGuanLi> getAll();
	boolean deleteU(int ui);
}
