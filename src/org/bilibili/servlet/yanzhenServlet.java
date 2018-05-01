package org.bilibili.servlet;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns="/yanzhegnma")
public class yanzhenServlet extends HttpServlet {

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
			int width=100;
			int heidht=30;
			String data="0123456789asdqwer";
			Random r=new Random();
			BufferedImage image=new BufferedImage(width, heidht, BufferedImage.TYPE_INT_RGB);
			Graphics G=image.getGraphics();
			G.setColor(Color.gray);
			G.fillRect(0, 0, width, heidht);
			G.setColor(Color.black);
			for (int i = 0; i < 4; i++) {
				int le=r.nextInt(data.length());
				String datale=data.substring(le,le+1);
				G.drawString(datale, width/5*(i+1), 15);
			}
			
			ImageIO.write(image, "jpg",response.getOutputStream());
		
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
