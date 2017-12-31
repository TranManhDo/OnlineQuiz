package com.duy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.fabric.FabricCommunicationException;



public class LoginDao {
	public  static boolean ConnDB(String name,String Pass,String roleid)
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
		boolean tmp=false;
	
	
		try {
			cnn = DriverManager.getConnection(
					"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
			stm=cnn.createStatement();
			rs=stm.executeQuery("SELECT Username,Password FROM tbl_User where  Username='"+name+"'and Password='"+Pass+"' and ROleID='"+roleid+"'");	
			tmp=rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return tmp;
	}
}
