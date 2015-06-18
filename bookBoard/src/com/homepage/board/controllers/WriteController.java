package com.homepage.board.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/board/write.soso", "/board/writeForm.soso"})
public class WriteController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String urlForward = "";
		
		switch(request.getServletPath()){
		
			case "/board/write.soso":
				urlForward = writeService(request, response);
				break;
			case "/board/writeForm.soso":
				urlForward = writeFormService(request, response);
				break;
			
		
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(urlForward); 
		dispatcher.forward(request, response);
	}
	
	private String writeFormService(HttpServletRequest request, HttpServletResponse response) {
		return "/views/board/boardWrite.jsp";
	}
		

	private String writeService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String bSelect = request.getParameter("bSelect");
		request.setAttribute("bSelect", bSelect);

		String category = request.getParameter("category");
		request.setAttribute("category", category);

		String pValue = request.getParameter("public");
		request.setAttribute("pValue", pValue);
		
		String title = request.getParameter("title");
		request.setAttribute("title", title);
		
		String content = request.getParameter("content");
		request.setAttribute("content", content);
		
		String name = request.getParameter("name");
		request.setAttribute("name", name);
		
		return "/views/board/boardContent.jsp";
	}

}
