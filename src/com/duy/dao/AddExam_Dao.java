package com.duy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AddExam_Dao {
	public  static  void ConnDB(String idSub,String idClass,String nameExam,String timeTest,String timeOpen,String timeFinish,String sumquestion)
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
			rs=stm.executeQuery("insert into  dbo.Exam values('','"+idSub+"','"+nameExam+"',"+timeTest+","+timeOpen+","+timeFinish+","+sumquestion+")"+"declare @id varchar(6)set @id=(select  top 1 ExamID  from dbo.Exam  order by ExamID desc)"+"insert into dbo.Exam_Class values(@id,'"+idClass+"')");	
			rs.next();
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			
		}
		
	}
}
