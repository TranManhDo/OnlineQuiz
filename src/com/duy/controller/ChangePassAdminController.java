package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.ChangePassAdminDao;
import com.duy.dao.RegisterDao;

@WebServlet("/ChangePassAdminController")
public class ChangePassAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChangePassAdminController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String passNew=request.getParameter("newpassword");
		String passOld=request.getParameter("currentpassword");
		//String passConfirm=request.getParameter("cfpassword");
		try {
			   ChangePassAdminDao.ConnDB(name, passNew, passOld);
			   RequestDispatcher myRd = request.getRequestDispatcher("Admin_ChangePass.jsp");
			myRd.forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	 
		
	}

}
