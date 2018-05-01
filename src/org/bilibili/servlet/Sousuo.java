package org.bilibili.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.VideoDao;
import org.bilibili.dao.impl.VideoDaoImpl;
import org.bilibili.entity.Vedio;
@WebServlet(urlPatterns="/sousuo")
public class Sousuo extends HttpServlet {

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
		List<Vedio> list=dv.getvediobuyid(request.getParameter("ssname"));
	/*	System.out.println(request.getParameter("ssname"));
		System.out.println(list.size());*/
//		System.out.println(list.get(0).getVideoBiaoQian());
		request.setAttribute("list", list);
		request.getRequestDispatcher("/sousuo.jsp").forward(request, response);
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

	}

}
