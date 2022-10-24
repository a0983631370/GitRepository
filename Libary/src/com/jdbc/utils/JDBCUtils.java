package com.jdbc.utils;
import java.sql.*;
			
public class JDBCUtils {//連線方法
	public static Connection getConnection()
	{
		
		String url = "jdbc:mysql://localhost:3306/mywork";
		String user = "root" ;
		String password = "1234";
		Connection con = null ;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				con = DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}System.out.println("WriteIn JDBC OK");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		
		}
		
		return con ;
		
	}
	
	/**
	 * 關閉連線
	 */
	public static void close(ResultSet rs, Statement stmt , Connection con)
	{
		try {
			if(null != rs)
			{
				rs.close();
				rs = null ;
			}
			
			if(null != stmt)
			{
				stmt.close();
				stmt = null ;
			}
			
			if(null != con)
			{
				con.close();
				con = null ;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
