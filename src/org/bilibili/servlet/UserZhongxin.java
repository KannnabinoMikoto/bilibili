package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bilibili.dao.impl.VideoDaoImpl;
import org.bilibili.entity.UserInfo;
import org.bilibili.entity.Vedio;
@WebServlet(urlPatterns="/user.go")
public class UserZhongxin extends HttpServlet {

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
		VideoDaoImpl dvi= new VideoDaoImpl();
		UserInfo ui=(UserInfo)request.getSession().getAttribute("user");
		System.out.println(ui.getAccountNo());
		List<Vedio> msc=dvi.getAllTouGaoByTypeNo(ui.getAccountNo(), 3);
		List<Vedio> mtg=dvi.getAllshoucangByTypeNo(ui.getAccountNo(), 3);//这才是收藏
		List<Vedio> shenhe=dvi.getAllshenheByTypeNo(ui.getAccountNo(), 3);
		System.out.println(mtg.size());
		request.setAttribute("msc", msc);
		request.setAttribute("mtg", mtg);
		request.setAttribute("shenhe", shenhe);
		System.out.println("审核"+shenhe.size());
		request.getRequestDispatcher("/User.jsp").forward(request, response);
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
