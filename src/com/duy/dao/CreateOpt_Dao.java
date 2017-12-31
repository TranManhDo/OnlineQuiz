package com.duy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class CreateOpt_Dao {
	public  static  void ConnDB(String contentOps,String trueFasle)
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
			rs=stm.executeQuery("declare @id varchar(6) set @id	=(select  top 1 QstID  from dbo.Question  order by QstID desc)"+"insert  into dbo.Answer values('',@id,'"+contentOps+"','"+trueFasle+"')");	
			rs.next();
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
		
	}

}
