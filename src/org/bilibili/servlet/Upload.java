package org.bilibili.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import org.bilibili.dao.impl.VideoDaoImpl;
import org.bilibili.entity.UserInfo;
import org.bilibili.entity.Vedio;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
@WebServlet(urlPatterns="/upload")
public class Upload extends HttpServlet {

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
		//System.out.println(request.getParameter("fenlei"));
		PageContext context = JspFactory.getDefaultFactory().getPageContext(this, request, response, null, true, 8*1024, true);
		//新建一个SmartUpload对象 
		SmartUpload su = new SmartUpload();
		su.setCharset("utf-8");
		//上传初始化 
		su.initialize(context);
		// 设定上传限制 
		//1.限制每个上传文件的最大长度。
		su.setMaxFileSize(10000000);
		//2.限制总上传数据的长度。
		su.setTotalMaxFileSize(20000000);
		//3.设定允许上传的文件（通过扩展名限制）,仅允许doc,txt文件。
		su.setAllowedFilesList("webp,doc,txt,jpg,rar,mid,waw,mp3,gif,flv,mp4");
		boolean sign = true; 
		String url="";
		String fm="";
		//4.设定禁止上传的文件（通过扩展名限制）,禁止上传带有exe,bat,jsp,htm,html扩展名的文件和没有扩展名的文件。 
		try { 
		    su.setDeniedFilesList("exe,bat,jsp,htm,html");
		    //上传文件 
		    su.upload(); 
		    //将上传文件保存到指定目录
		   	File f = su.getFiles().getFile(0); 
			File m = su.getFiles().getFile(1); 
		    url = "视频/"+f.getFileName();
		    fm="shipinfengmian/"+m.getFileName();
		    f.saveAs(url, SmartUpload.SAVE_VIRTUAL);
		    m.saveAs(fm, SmartUpload.SAVE_VIRTUAL);
		} catch (Exception e) {
		    e.printStackTrace();
		    sign = false;
		}
		UserInfo ui=(UserInfo)request.getSession().getAttribute("user");
		Request req=su.getRequest();//需要用SmartUpload上传对象获取请求对象，然后在使用请求对象获取参数的值
		String name = req.getParameter("biaoti");//获得标题
		int fenlei = Integer.parseInt(req.getParameter("fenlei"));//获得分类
		String biaoqian = req.getParameter("biaoqian");//获得标签
		String miaoshu = req.getParameter("miaoshu");//获得描述
		int uid=ui.getAccountNo();//获得session中的用户编号
		Vedio v=new Vedio();
		v.setVideoAccount(ui.getAccountNo());//获得seession里面的用户编号
		v.setVideoName(name);
		v.setVideoPath(url);
		v.setVideoBiaoQian(biaoqian);
		v.setVideoText(miaoshu);
		v.setVideofengman(fm);//封面有问题（重要）
		VideoDaoImpl vdi=new VideoDaoImpl();				
		if (vdi.addVideo(v, fenlei)) {
			response.sendRedirect("user.go");
		}
		

	//	response.sendRedirect("user.go");
//		System.out.println(request.getParameter("feilei"));
//		if(sign==true) {
//		    out.println("<script＞parent.callback('upload file success')</script＞");
//		} else {
//		    out.println("<script＞parent.callback('upload file error')</script＞"); 
//		} 
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
