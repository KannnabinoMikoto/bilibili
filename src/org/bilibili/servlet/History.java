package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.LIshiDao;
import org.bilibili.dao.impl.LishiDaoImpl;
import org.bilibili.entity.Lishi;
import org.bilibili.entity.UserInfo;
@WebServlet(urlPatterns="/history")
public class History extends HttpServlet {

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
		UserInfo ui=(UserInfo)request.getSession().getAttribute("user");
		LIshiDao lsd=new LishiDaoImpl();
		List<Lishi> listls=lsd.getAllByUid(ui.getAccountNo());
		request.setAttribute("listls", listls);
		System.out.println(ui.getAccountNo());
		request.getRequestDispatcher("Histroy.jsp").forward(request, response);
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
