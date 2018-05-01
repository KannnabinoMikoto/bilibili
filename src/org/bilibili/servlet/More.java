package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.VideoDao;
import org.bilibili.dao.impl.VideoDaoImpl;
import org.bilibili.entity.Vedio;
@WebServlet(urlPatterns="/more")
public class More extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		VideoDao dv=new VideoDaoImpl();
		List<Vedio> all=dv.getvediobuyid("");//所有
		List<Vedio> yinyue=dv.getAllVedioByType(3);//音乐
		List<Vedio> keji=dv.getAllVedioByType(6);//科技
		List<Vedio> donghua=dv.getAllVedioByType(1);//动画
		request.setAttribute("all", all);
		request.setAttribute("yinyue", yinyue);
		request.setAttribute("keji", keji);
		request.setAttribute("donghua", donghua);
		request.getRequestDispatcher("/picture.jsp").forward(request, response);
		
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
