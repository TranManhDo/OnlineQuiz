package com.duy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AddUser_Dao {
	public  static  void ConnDB(String name,String Pass,String fullname,String email, String date,String sex,String classid,String roleid)
	{
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		Connection cnn= null;
	    Statement stm=null;
		ResultSet rs=null;	
		
	
	
		try {
			cnn = DriverManager.getConnection(
					"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
			stm=cnn.createStatement();
			rs=stm.executeQuery("insert into  dbo.tbl_User values('','"+name+"','"+Pass+"','"+fullname+"','"+email+"','"+date+"','"+sex+"','"+roleid+"','"+classid+"')");	
			rs.next();
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
		
	//return tmp;
	}
}
