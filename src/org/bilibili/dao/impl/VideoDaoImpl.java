package org.bilibili.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.bilibili.dao.VideoDao;
import org.bilibili.entity.Vedio;
import org.bilibili.util.BaseDao;

public class VideoDaoImpl extends BaseDao implements VideoDao{
	

	@Override
	public List<Vedio> getAllVedio() {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select * from VideoInfo",null);
		try {
			if (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Vedio getVedio(int VideoId) {
		// TODO Auto-generated method stub
		Vedio v=null;
		ResultSet rs=executeQuery("select * from VideoInfo where VideoId=?",new Object[]{VideoId} );
		try {
			if (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return v;
	}
	
	@Override
	public List<Vedio> getAllVedioByTypeNo(int TypeNo,int topno) {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select top (?)* from VideoInfo where VideoType = ? and Videoshenhe=1",new Object[]{topno,TypeNo});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * 搜索排行前十按硬币排序
	 */
	public List<Vedio> getTopVedioByTypeNo(int TypeNo) {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select top (10)* from VideoInfo where VideoType = ? and Videoshenhe=1 ORDER BY Videoyingbi DESC",new Object[]{TypeNo});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
//新番排行查询
	public List<Vedio> getTopAVedioByTypeNo() {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select top (10)* from VideoInfo where VideoType in (10,11,12,13,14,15,16,17) and Videoshenhe=1 ORDER BY Videoyingbi",null);
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
//模糊查询
	@Override
	public List<Vedio> getvediobuyid(String name) {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select * from VideoInfo where VideoName like '%'+?+'%' and Videoshenhe=1",new Object[]{name});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	//分页查询视频
	public List<Vedio> getAllVedioByType(int TypeNo) {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select * from VideoInfo where VideoType = ? and Videoshenhe=1",new Object[]{TypeNo});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	//我的投稿
	public List<Vedio> getAllTouGaoByTypeNo(int userid,int topno) {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select top (?)* from VideoInfo where VideoAccount = ? and Videoshenhe=1",new Object[]{topno,userid});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	//我的收藏
	public List<Vedio> getAllshoucangByTypeNo(int userid,int topno) {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select top(?)* from VideoInfo inner join vedioshoucang on VideoInfo.VideoID=vedioshoucang.vedioshoucangID where vedioshoucangAccount=?",new Object[]{topno,userid});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 待审核
	 */
	public List<Vedio> getAllshenheByTypeNo(int userid,int topno) {
		// TODO Auto-generated method stub
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select top (?)* from VideoInfo where VideoAccount = ? and Videoshenhe=0",new Object[]{topno,userid});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public boolean addVideo(Vedio v,int tp) {
		// TODO Auto-generated method stub
		String sql="insert into VideoInfo values (?,?,?,?,?,?,?,0,0,0,?)";
		java.util.Date date=new java.util.Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(date);
//		int type=(int)v.getVideoType();
		Object params[]={v.getVideoName(),v.getVideoAccount(),dateString,tp,v.getVideoPath(),v.getVideoBiaoQian(),v.getVideoText(),v.getVideofengman()};
		return executeUpdate(sql, params);
	}

	@Override
	public List<Vedio> getNoshenhe() {
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		ResultSet rs=executeQuery("select * from VideoInfo where Videoshenhe=0",null);
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean Tongguo(int vid) {
		// TODO Auto-generated method stub
		return executeUpdate("update VideoInfo set Videoshenhe=1 where VideoID=?", new Object[]{vid});
	}

	@Override
	public List<Vedio> getVByPage(int page) {
		List<Vedio> list=new ArrayList<Vedio>();
		Vedio v=null;
		int pg=page-1;
		ResultSet rs=executeQuery("select top(10)* from VideoInfo where VideoID not in (select top(?*10)VideoID from VideoInfo)",new Object[]{pg});
		try {
			while (rs.next()) {
				v=new Vedio();
				v.setVideoId(rs.getInt("VideoId"));//视频编号
				v.setVideoName(rs.getString("VideoName"));//视频名称
				v.setVideoAccount(rs.getInt("VideoAccount"));//视频作者【需要链表】
				v.setVideoDate(rs.getDate("VideoDate"));//上传日期
				v.setVideoType(rs.getString("VideoType"));//视频分类【需要链表】
				v.setVideoPath(rs.getString("VideoPath"));//视频路径
				v.setVideoBiaoQian(rs.getString("VideoBiaoQian"));//视频标签
				v.setVideoText(rs.getString("VideoText"));//视频描述
				v.setVideoshoucang(rs.getInt("Videoshoucang"));//视频收藏数
				v.setVideoyingbi(rs.getInt("Videoyingbi"));//视频硬币数
				v.setVideoshenhe(rs.getInt("Videoshenhe"));//视频审核通过状态
				v.setVideofengman(rs.getString("Videofengman"));//视频封面
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean deletevideo(int vid) {
		// TODO Auto-generated method stub
		return executeUpdate("delete  from VideoInfo where VideoID=?", new Object[]{vid});
	}
	
}
