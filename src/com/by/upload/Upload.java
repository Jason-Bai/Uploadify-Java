package com.by.upload;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 处理文件上传的post
	 * 下方的类名出自包import org.apache.commons.fileupload.*,开始搞错了老是报错
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Create a factory for disk-based file items
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Configure a repository (to ensure a secure temp location is used)
		ServletContext servletContext = this.getServletConfig().getServletContext();
		File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(repository);
		
		// Set factory constraints
		//factory.setSizeThreshold(yourMaxMemorySize);

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		boolean multipartContent = upload.isMultipartContent(request);
		
		// Set overall request size constraint
		//upload.setSizeMax(yourMaxRequestSize);

		if(multipartContent) {
			// Parse the request
			try {
				List<FileItem> items = upload.parseRequest(request);
				
				// Process the uploaded items
				Iterator<FileItem> iter = items.iterator();
				while (iter.hasNext()) {
				    FileItem item = iter.next();

				    if (item.isFormField()) {
				        processFormField(item);
				    } else {				    	
				        processUploadedFile(item);
				    }
				}
			} catch (FileUploadException e) {
				e.printStackTrace();
			}
			response.getWriter().print("success");
		} else {
			response.getWriter().print("file upload format is wrong!");
		}
	}

	private void processUploadedFile(FileItem item) {
		// Process a file upload
		if (!item.isFormField()) {
		    String fieldName = item.getFieldName();
		    String fileName = item.getName();
		    String contentType = item.getContentType();
		    boolean isInMemory = item.isInMemory();
		    long sizeInBytes = item.getSize();

		    String storePath = this.getServletContext().getRealPath("/store");		    
		    File uploadedFile = new File(storePath + "/" + fileName);
		    if(!uploadedFile.exists()) {
			    try {
					item.write(uploadedFile);
				} catch (Exception e) {
					e.printStackTrace();
				}
		    }
		}
	}

	private void processFormField(FileItem item) {
		// Process a regular form field
		if (item.isFormField()) {
		    String name = item.getFieldName();
		    String value = item.getString();
		}
	}
}
