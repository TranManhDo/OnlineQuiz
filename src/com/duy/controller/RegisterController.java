package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.RegisterDao;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			   RegisterDao.ConnDB(name, Pass, fullname, email, birthday, sex, classid,roleid);
			   PrintWriter print=response.getWriter();
			  print.println("Inserted Successfully");
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	 
		
		
		
 	}

}
