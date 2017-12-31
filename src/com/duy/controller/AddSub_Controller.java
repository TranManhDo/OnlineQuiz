package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.AddRole_Dao;
import com.duy.dao.AddSub_Dao;
@WebServlet("/AddSub_Controller")
public class AddSub_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddSub_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("subname");
		
		try {
			   AddSub_Dao.ConnDB(name);
			   PrintWriter print=response.getWriter();
			  print.println("Inserted Successfully");
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	}

}
