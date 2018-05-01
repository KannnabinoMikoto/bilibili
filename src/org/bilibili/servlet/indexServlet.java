package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bilibili.dao.UserInfoDao;
import org.bilibili.dao.impl.UserInfoImpl;
import org.bilibili.entity.UserInfo;
@WebServlet(urlPatterns="/bilibili.com")
public class indexServlet extends HttpServlet {

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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		ServletContext context=this.getServletContext();
		UserInfoDao uid=new UserInfoImpl();
		UserInfo u=new UserInfo();
		u.setAccountName(request.getParameter("username"));
		u.setAccountPwd(request.getParameter("password"));
		UserInfo ui=uid.Info(u);		
		HttpSession session=request.getSession();
		
		if (ui!=null) {
			session.removeAttribute("user");
				session.setAttribute("user",ui);
			//request.setAttribute("message", "恭喜您注册成功,可直接登录");
				request.getRequestDispatcher("/show.do").forward(request, response);;
					//response.sendRedirect(context.getContextPath()+"/index.jsp");
		//	request.getRequestDispatcher("/login.jsp").forward(request, response);
				} else {
					session.removeAttribute("message");
					session.setAttribute("message","用户名或者密码错误");
					response.sendRedirect(context.getContextPath()+"/login.jsp");
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
