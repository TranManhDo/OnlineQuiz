package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.AddRole_Dao;
import com.duy.dao.AddUser_Dao;

@WebServlet("/AddRole_Controller")
public class AddRole_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddRole_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("rolename");
		
		try {
			   AddRole_Dao.ConnDB(name);
			   RequestDispatcher myRd = request.getRequestDispatcher("AddAdmin_Role.jsp");
			myRd.forward(request, response);
				  
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	}
	

}
