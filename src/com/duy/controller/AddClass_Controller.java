package com.duy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.duy.dao.AddClass_Dao;

@WebServlet("/AddClass_Controller")
public class AddClass_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddClass_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String name=request.getParameter("classname");
		
		try {
		   AddClass_Dao.ConnDB(name);
		    RequestDispatcher myRd = request.getRequestDispatcher("AddAdmin_Class.jsp");
			myRd.forward(request, response);
			  
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
		
	}

}
