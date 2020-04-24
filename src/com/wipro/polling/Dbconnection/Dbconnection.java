package com.wipro.polling.Dbconnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class Dbconnection {
	



	    public static Connection getConnection() {
	        
	        try {
	        	Class.forName("oracle.jdbc.driver.OracleDriver");
	            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yuvi123");
	             Statement st=con.createStatement();
	             System.out.println("connection established successfully...!!"); 
	             return con;
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
			return null;
	       
	    }
	}


