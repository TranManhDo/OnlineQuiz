package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.AddExam_Dao;
import com.duy.dao.SelectQuestion_Dao;

@WebServlet("/SelectQuestion_Controller")
public class SelectQuestion_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectQuestion_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idQuestion=request.getParameter("checked");
		try {
			  SelectQuestion_Dao.ConnDB(idQuestion);
			   PrintWriter print=response.getWriter();
			  print.println("Inserted Successfully");
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	}

}
