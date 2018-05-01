package org.bilibili.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.GuangGaoDao;
import org.bilibili.dao.VideoDao;
import org.bilibili.dao.impl.GuangGaoDaoImpl;
import org.bilibili.dao.impl.VideoDaoImpl;
import org.bilibili.entity.GuangGao;
import org.bilibili.entity.Vedio;
import org.bilibili.util.PageBean;
@WebServlet(urlPatterns="/show.do")
public class showIndexServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error oced
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		VideoDao vd=new VideoDaoImpl();//视频信息的Dao模式调用
		GuangGaoDao ggd=new GuangGaoDaoImpl();//广告内容的Dao模式调用
	//	PageBean<Vedio> pb=new PageBean<Vedio>();//pageBean实体类
//		pb.setTotalPage();
		
		List<GuangGao> guanggao =ggd.getAll();       //获得所有广告路径                                        
		List<Vedio> listlunbo=vd.getAllVedioByTypeNo(3,8);//获得分类轮播的视频信息(分类，得到数量)音乐区的8个
		List<Vedio> donghua=vd.getAllVedioByTypeNo(1,8);//获得分类轮播的视频信息(分类，得到数量)动画区的8个
		List<Vedio> tuijian=vd.getAllVedioByTypeNo(8,4);//获得推荐块的视频信息(分类，得到数量)
		List<Vedio> keji=vd.getAllVedioByTypeNo(6,8);//获得科技块的视频信息(分类，得到数量)
		List<Vedio> z0=vd.getAllVedioByTypeNo(10,4);
		List<Vedio> z1=vd.getAllVedioByTypeNo(11,4);
		List<Vedio> z2=vd.getAllVedioByTypeNo(12,4);
		List<Vedio> z3=vd.getAllVedioByTypeNo(13,4);
		List<Vedio> z4=vd.getAllVedioByTypeNo(14,4);
		List<Vedio> z5=vd.getAllVedioByTypeNo(15,4);
		List<Vedio> z6=vd.getAllVedioByTypeNo(16,4);
		List<Vedio> z7=vd.getAllVedioByTypeNo(17,4);
		List<Vedio> tz8=vd.getTopAVedioByTypeNo();
		List<Vedio> tdonghua=vd.getTopVedioByTypeNo(1);
		List<Vedio> tkeji=vd.getTopVedioByTypeNo(6);
		List<Vedio> tyinyue=vd.getTopVedioByTypeNo(3);
//		List<Vedio> yinyue=vd.getAllVedioByTypeNo(3,8);//获得科技块的视频信息(分类，得到数量)
		request.setAttribute("listlunbo", listlunbo);//将轮播信息传递request中
		request.setAttribute("guanggao", guanggao);//将广告信息传递request中
		request.setAttribute("tuijian", tuijian);//将推荐块信息传递request中
		request.setAttribute("donghua", donghua);//将动画信息传递request中
//		request.setAttribute("yinyue", yinyue);//将动画信息传递request中
		request.setAttribute("keji", keji);//将科技区信息传递request中
		request.setAttribute("tz8", tz8);
		request.setAttribute("tdonghua", tdonghua);
		request.setAttribute("tkeji", tkeji);
		request.setAttribute("tyinyue", tyinyue);
		request.setAttribute("z0", z0);
		request.setAttribute("z1", z1);
		request.setAttribute("z2", z2);
		request.setAttribute("z3", z3);
		request.setAttribute("z4", z4);
		request.setAttribute("z5", z5);
		request.setAttribute("z6", z6);
		request.setAttribute("z7", z7);
//		System.out.println(guanggao.get(0).getGuanggaopath());//测试获得数组广告的长度
//		System.out.println(tuijian.get(0).getVideofengman());
//		System.out.println(listlunbo.size());
//		System.out.println(listlunbo.get(0).getVideofengman());
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		//System.out.println(tuijian.get(0).getVideoAccount());
		
	}
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
