package com.duy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duy.dao.LoginDao;
import com.duy.model.LoginModel;
@WebServlet("/LoginController")

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		   String name= request.getParameter("username");
	       String pass=request.getParameter("password");
	       String role=request.getParameter("role");
	      if (LoginDao.ConnDB(name, pass,role))
	      {
	    	  if ("US_001".equals(role))
	    	  {
	    		  RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
		    	  rd.forward(request, response);
		      }
	    	  else  if ("US_002".equals(role))
	    	  {
	    		  RequestDispatcher rd=request.getRequestDispatcher("Student.jsp");
		    	  rd.forward(request, response);
		      }
	    	  else  if ("US_003".equals(role))
	    	  {
	    		  RequestDispatcher rd=request.getRequestDispatcher("Manager_BankQuestions.jsp");
		    	  rd.forward(request, response);
		      }
	    	  else  if ("US_004".equals(role))
	    	  {
	    		  RequestDispatcher rd=request.getRequestDispatcher("Manager_Exam1.jsp");
		    	  rd.forward(request, response);
		      }
	      }
	      else {
	    	  RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	    	  rd.forward(request, response);
		}
	}

}
