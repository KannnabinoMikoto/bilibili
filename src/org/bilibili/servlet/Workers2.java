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
@WebServlet(urlPatterns="/workers2")
public class Workers2 extends HttpServlet {

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
		int num=1;
		try {
			if (request.getParameter("num").equals(null)||request.getParameter("num")==null||request.getParameter("num")=="") {
				num=1;
			} else {
				num=Integer.parseInt(request.getParameter("num"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		VideoDao vd=new VideoDaoImpl();
		List<Vedio> list=vd.getVByPage(num);
		request.setAttribute("list", list);
		System.out.println(num);
		System.out.println(list.size());
		request.getRequestDispatcher("back/workers2.jsp").forward(request, response);
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
