package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.UserInfoDao;
import org.bilibili.dao.impl.UserInfoImpl;
import org.bilibili.entity.UserInfo;
@WebServlet(urlPatterns="/shoucang")
public class Shoucang extends HttpServlet {

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
		if (request.getSession().getAttribute("user")== null ||request.getSession().getAttribute("user")== "") {
			response.sendRedirect(request.getContextPath()+"/login.jsp");
			return;
		} 
		
		System.out.println("aaa");
		
		int vedioid=Integer.parseInt(request.getParameter("vedioId"));
		System.out.println(request.getParameter("vedioId"));
		UserInfoDao uid=new UserInfoImpl();
		UserInfo uf=(UserInfo)request.getSession().getAttribute("user");
		PrintWriter out=response.getWriter();
		System.out.println(uf.getAccountNo());
		if (uid.shoucang(uf.getAccountNo(), vedioid)) {
			out.print(true);
			System.out.println("chengogng");
		} else {
			out.print(false);
			System.out.println("shibai");
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
