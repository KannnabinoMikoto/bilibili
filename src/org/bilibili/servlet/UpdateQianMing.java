package org.bilibili.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.UserInfoDao;
import org.bilibili.dao.impl.UpdateQianMingDaoImpl;
import org.bilibili.dao.impl.UserInfoImpl;
import org.bilibili.entity.UserInfo;
@WebServlet(urlPatterns="/updateQianMing")
public class UpdateQianMing extends HttpServlet {

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
			UserInfoDao uio=new UserInfoImpl();
			UserInfo ui=(UserInfo)request.getSession().getAttribute("user");
			UpdateQianMingDaoImpl uqmdi=new UpdateQianMingDaoImpl();
			if (uqmdi.updateqm(request.getParameter("qianming"), ui.getAccountNo())) {
				ui=uio.InfoById(ui.getAccountNo());
				request.getSession().setAttribute("user", ui);
				response.getWriter().print(true);
			}else{
				response.getWriter().print(false);
				System.out.println("没改好老铁");
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
