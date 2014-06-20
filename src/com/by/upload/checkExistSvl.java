package com.by.upload;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class checkExistSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 检测文件是否存在post
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		// post中携带filename参数
		String fileName = req.getParameter("filename");
		
		String storePath = this.getServletContext().getRealPath("/store");
		
		File file = new File(storePath + "/" + fileName);
		// 存在返回1， 不存在返回0，处理由前端处理
		if(file.exists()) {
			res.getWriter().print("1");
		} else {
			res.getWriter().print("0");
		}
	}
}
