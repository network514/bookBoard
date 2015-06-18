package com.homepage.board.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/modify.soso")
public class ModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/board/boardModify.jsp"); 
		dispatcher.forward(request, response);
	}


}
