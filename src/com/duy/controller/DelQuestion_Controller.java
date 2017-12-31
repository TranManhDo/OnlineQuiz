package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.DelQuestion_Dao;
import com.duy.dao.DelRole_Dao;

@WebServlet("/DelQuestion_Controller")
public class DelQuestion_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelQuestion_Controller() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String select =request.getParameter("delete");
			try {
				   DelQuestion_Dao.ConnDB(select);
				   PrintWriter print=response.getWriter();
				  print.println("DELETE Successfully");
			} catch (Exception e) {
				System.out.println(e);
				e.printStackTrace();
				
			}
		 
	}

}
