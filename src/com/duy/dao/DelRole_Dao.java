package com.duy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DelRole_Dao {
	public  static  void ConnDB(String id)
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
			rs=stm.executeQuery("delete from dbo.tbl_Role where RoleID='"+id+"'");	
			rs.next();
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
		
	}

}
