package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

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
@WebServlet(urlPatterns="/user.do")
public class UserInfoServlet extends HttpServlet {

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
			UserInfo ui=new UserInfo();
			HttpSession session=request.getSession();
			session.removeAttribute("user");
			
			ui.setAccountName(request.getParameter("username"));
			
			ui.setAccountPwd(request.getParameter("userpwd"));
			
	
			ui.setPicturePath("img/"+request.getParameter("touxiang"));
			
			
			ui.setAccountSex(Integer.parseInt(request.getParameter("sex")));
			
			ui.setAccountEmail(request.getParameter("email"));
			
			ui.setAccountBirthday(request.getParameter("years"));//new DateFormat(yy/mm/dd);
			
			ui.setAccountAddress(request.getParameter("address"));
		
			ui.setAccountBandPhotoorQQ(Integer.parseInt(request.getParameter("qq")));
			
			System.out.println(request.getParameter("touxiang"));
			if (uid.addUserInfo(ui)) {
				session.setAttribute("message","恭喜您注册成功,可直接登录");
				//request.setAttribute("message", "恭喜您注册成功,可直接登录");
				
			//	request.getRequestDispatcher("/login.jsp").forward(request, response);
				response.sendRedirect(context.getContextPath()+"/login.jsp");
					} else {
				response.getWriter().write("操作中断");
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
