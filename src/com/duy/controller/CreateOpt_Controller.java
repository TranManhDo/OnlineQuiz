package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.CreateOpt_Dao;
import com.duy.dao.CreateQst_Dao;

@WebServlet("/CreateOpt_Controller")
public class CreateOpt_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateOpt_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contentOps=request.getParameter("answer");
		String  trueFasle=request.getParameter("truefalse");
	
		try {
			   CreateOpt_Dao.ConnDB(contentOps, trueFasle);
			   PrintWriter print=response.getWriter();
			  print.println("Inserted Successfully");
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
		
	}

}
