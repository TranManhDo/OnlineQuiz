package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.ChangePassAdminDao;
import com.duy.dao.ChangePass_MnQst;

@WebServlet("/ChangePs_ManaQs_Controller")
public class ChangePs_ManaQs_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChangePs_ManaQs_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("username");
		String passNew=request.getParameter("newpassword");
		String passOld=request.getParameter("currentpassword");
		try {
			   ChangePass_MnQst.ConnDB(name, passNew, passOld);
			   PrintWriter print=response.getWriter();
			 print.println("Change Successfully");
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	}

}
