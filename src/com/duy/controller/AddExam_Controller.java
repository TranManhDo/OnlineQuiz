package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.AddExam_Dao;
import com.duy.dao.AddUser_Dao;

@WebServlet("/AddExam_Controller")
public class AddExam_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddExam_Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idClass=request.getParameter("class");
		String idSub=request.getParameter("subject");
		String nameExam=request.getParameter("nameExam");
		String timeTest=request.getParameter("timeTest");
		String timeOpen=request.getParameter("timeOpen");
		String timeFinish=request.getParameter("timeFinish");
		String sumQuestion=request.getParameter("sumQs");
		try {
			  AddExam_Dao.ConnDB(idSub, idClass, nameExam, timeTest, timeOpen, timeFinish, sumQuestion);
			   PrintWriter print=response.getWriter();
			  print.println("Inserted Successfully");
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
	}

}
