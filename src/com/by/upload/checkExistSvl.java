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
	 * ����ļ��Ƿ����post
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		// post��Я��filename����
		String fileName = req.getParameter("filename");
		
		String storePath = this.getServletContext().getRealPath("/store");
		
		File file = new File(storePath + "/" + fileName);
		// ���ڷ���1�� �����ڷ���0��������ǰ�˴���
		if(file.exists()) {
			res.getWriter().print("1");
		} else {
			res.getWriter().print("0");
		}
	}
}
