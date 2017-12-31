package com.duy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.DelUser_Dao;
import com.duy.dao.UpdateUser_Dao;

/**
 * Servlet implementation class UpdateUser_Controller
 */
@WebServlet("/UpdateUser_Controller")
public class UpdateUser_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateUser_Controller() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String UserID = request.getParameter("update");
		String name = request.getParameter("username");
		String fullname = request.getParameter("fullname");
		String Pass = request.getParameter("password");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");
		String classid = request.getParameter("class");
		String roleid = request.getParameter("role");
		try {
			UpdateUser_Dao.ConnDB(UserID, name, Pass, fullname, email,birthday, sex, roleid,classid);
			PrintWriter print=response.getWriter();
			 print.println("Change Successfully");
		

		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();

		}

	}

}
