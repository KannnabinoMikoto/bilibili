package org.bilibili.dao;

import java.util.List;

import org.bilibili.entity.UserInfo;
import org.bilibili.entity.Vedio;


public interface VideoDao {
	List<Vedio> getAllVedio();//得到所有视频信息
	Vedio getVedio(int VedioId); //单独得到视频
//	UserInfo getUserInfo(int VedioId); //从外键获得视频的po主
	List<Vedio> getAllVedioByTypeNo(int TypeNo,int topno);//获得对应分区视频
	List<Vedio> getTopVedioByTypeNo(int TypeNo);
	List<Vedio> getTopAVedioByTypeNo() ;
	List<Vedio> getvediobuyid(String name) ;
	List<Vedio>	getAllVedioByType(int type);
	boolean addVideo(Vedio v,int tp);
	List<Vedio> getAllshenheByTypeNo(int userid,int topno);
	List<Vedio> getNoshenhe();
	boolean Tongguo(int vid);
	List<Vedio> getVByPage(int page);
	boolean deletevideo(int vid);
}
