package com.wipro.polling.Dbconnection;
import java.sql.*;
public class Dbconnection {
	



	    public static Connection getConnection() {
	        
	        try {
	        	Class.forName("com.mysql.jdbc.Driver"); 
	            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/votingsystem","yuvaraj","+Sec=2;$=10");
	             System.out.println("connection established successfully...!!"); 
	             return con;
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
			return null;
	       
	    }
	}


