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
@WebServlet(urlPatterns="/check")
public class Login extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserInfoDao uid=new UserInfoImpl();
		//boolean ok;
		PrintWriter out=response.getWriter();
		if (uid.chenckuserinfo(request.getParameter("username"))) {
			out.print(true);
			System.out.println("存在");
		} else {
			out.print(false);
			
			System.out.println("不存在");
		}

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
	}

}
