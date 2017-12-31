package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.AddUser_Dao;

@WebServlet("/AddUser_Controller")
public class AddUser_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddUser_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String fullname=request.getParameter("fullname");
		String Pass=request.getParameter("password");
		String email=request.getParameter("email");
		String birthday=request.getParameter("birthday");
		String sex=request.getParameter("sex");
		String classid =request.getParameter("class");
		String roleid=request.getParameter("role");
		try {
			   AddUser_Dao.ConnDB(name, Pass, fullname, email, birthday, sex, classid,roleid);
			   RequestDispatcher myRd = request.getRequestDispatcher("AddAdmin_User.jsp");
			   myRd.forward(request, response);
			  
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	}

}
