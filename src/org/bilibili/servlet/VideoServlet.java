package org.bilibili.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.LIshiDao;
import org.bilibili.dao.PinglunDao;
import org.bilibili.dao.TypeInfoDao;
import org.bilibili.dao.UserInfoDao;
import org.bilibili.dao.VideoDao;
import org.bilibili.dao.impl.BoomDaoImpl;
import org.bilibili.dao.impl.LishiDaoImpl;
import org.bilibili.dao.impl.PinglunDaoImpl;
import org.bilibili.dao.impl.TypeInfoDaoImpl;
import org.bilibili.dao.impl.UserInfoImpl;
import org.bilibili.dao.impl.VideoDaoImpl;
import org.bilibili.entity.Boom;
import org.bilibili.entity.Pinglun;
import org.bilibili.entity.UserInfo;
import org.bilibili.entity.Vedio;
import org.bilibili.util.StringSplit;
@WebServlet(urlPatterns="/video.do")

public class VideoServlet extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	BoomDaoImpl bdi=new BoomDaoImpl();
	PinglunDao pld=new PinglunDaoImpl();
	UserInfoDao uid=new UserInfoImpl();
	LIshiDao lsd=new LishiDaoImpl();

	List<Boom> lb=bdi.getBoom();
	TypeInfoDao tid=new TypeInfoDaoImpl();
	VideoDao vd=new VideoDaoImpl();
	String typename=tid.getTypeByVtid(Integer.parseInt(req.getParameter("ty")));//获得标签的名字
	Vedio v=vd.getVedio(Integer.parseInt(req.getParameter("av")));
	v.getVideoBiaoQian();
	UserInfo ui=uid.InfoById(v.getVideoAccount());
	List<Pinglun> lpl=pld.getByVid(v.getVideoId());
	UserInfo my=(UserInfo)req.getSession().getAttribute("user");
	if (req.getSession().getAttribute("user")!= null ) {
		lsd.addLishi(my.getAccountNo(),v.getVideoId());//添加历史及记录
	} 
	//req.getSession().setAttribute("lishi", req.getParameter("av"));
	//System.out.println(req.getSession().getAttribute("list"));
	String[] bq=new StringSplit().getNString(v.getVideoBiaoQian());//分割后视频标签数组合
	req.setAttribute("av", v);
	req.setAttribute("ui", ui);
	req.setAttribute("bq", bq);
	req.setAttribute("lb", lb);
	req.setAttribute("lpl", lpl);
	req.setAttribute("typename", typename);
//	System.out.println(bq.length);
//	System.out.println(bq[0].toString());
	//System.out.println(bq[1]);
	req.getRequestDispatcher("/video.jsp").forward(req, resp);
	}
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	doGet(req, resp);
	}

}
