package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.duy.dao.CreateQst_Dao;

@WebServlet("/CreateQs_Controller")
public class CreateQs_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateQs_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contentQs=request.getParameter("content");
		String  subid=request.getParameter("subject");
	
		try {
			   CreateQst_Dao.ConnDB(contentQs, subid);
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	}

}
