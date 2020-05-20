<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%
String dburl="jdbc:mysql://localhost:3306/votingsystem"; 
String dbusername="root"; //database username   
String dbpassword ="+sec=2;$=10"; //database password
if(request.getParameter("rollno")!=null) //get "uname" jQuery & Ajax part this line 'data:"uname="+username' from index.jsp file check not null
{
    String rollno=request.getParameter("rollno"); //getable "uname" store in new "user_name variable"
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword); //create connection
       
        PreparedStatement pstmt=null; //create statement
        
        pstmt=con.prepareStatement("SELECT * FROM pollings WHERE rollno=? "); //sql select query
        pstmt.setString(1,rollno); //set where cluase condition username set is new user_name variable
        ResultSet rs=pstmt.executeQuery(); //execute query and set in ResultSet object "rs".
        
        if(rs.next())               
        {  
            %>
            <span class="text-success">  Roll no found </span>
            <%
        }
        else
        {
            %>
            <span class="text-danger">Roll no not found</span>
            <%
        }

        rs.close();
        pstmt.close();
        con.close();//close connection
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
else if(request.getParameter("rollno_r")!=null){
	String rollno=request.getParameter("rollno_r"); //getable "uname" store in new "user_name variable"
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword); //create connection
       
        PreparedStatement pstmt=null; //create statement
        
        pstmt=con.prepareStatement("SELECT * FROM pollings WHERE rollno=? "); //sql select query
        pstmt.setString(1,rollno); //set where cluase condition username set is new user_name variable
        ResultSet rs=pstmt.executeQuery(); //execute query and set in ResultSet object "rs".
        
        if(rs.next())               
        {  
            %>
            <span class="text-danger">  Roll no already exist </span>
            <%
        }
        else
        {
            %>
            <span class="text-success">Roll no not found</span>
            <%
        }

        rs.close();
        pstmt.close();
        con.close();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}
%>