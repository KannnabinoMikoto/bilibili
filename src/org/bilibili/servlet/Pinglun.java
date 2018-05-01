package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.PinglunDao;
import org.bilibili.dao.impl.PinglunDaoImpl;
@WebServlet(urlPatterns="/pinglun")
public class Pinglun extends HttpServlet {

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
		System.out.println(request.getParameter("plnr"));
	
		if (request.getParameter("plnr").equals("")||request.getParameter("plnr")==""||request.getParameter("plnr")==null) {
			response.getWriter().print(false);
			return;
		}
		PinglunDao pld=new PinglunDaoImpl();
		if (pld.addPl(request.getParameter("plnr"), Integer.parseInt(request.getParameter("plvid")), Integer.parseInt(request.getParameter("uid")))) {
			response.getWriter().print(true);
			System.out.println("chengong:数间距为");
			System.out.println(request.getParameter("plvid"));
			System.out.println(request.getParameter("plnr"));
			System.out.println(request.getParameter("uid"));
		} else {
			response.getWriter().print(false);
		}
		
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
