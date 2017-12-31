package com.duy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UpdateUser_Dao {
	
	public  static  void ConnDB(String UserID,String name,String Pass,String fullname,String email, String date,String sex,String roleid,String classid)
	{	
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection cnn= null;
	    Statement stm=null;
		ResultSet rs=null;		
	
		try {
			cnn = DriverManager.getConnection(
					"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
			stm=cnn.createStatement();
			rs=stm.executeQuery("update dbo.tbl_User set UserName='"+name+"',Password='"+Pass+"',FullName='"+fullname+"',Email='"+email+"',BirthDay='"+date+"',Sex='"+sex+"',RoleID='"+roleid+"',ClassID='"+classid+"' where UserID='"+UserID+"'");	
			rs.next();
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
		
	}
	
}
