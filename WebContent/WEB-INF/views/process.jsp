<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%
String dburl="jdbc:mysql://localhost:3306/votingsystem"; 
String dbusername="root"; //database username   
String dbpassword ="+sec=2;$=10"; //database password
System.out.print("hi");
if(request.getParameter("id")!=null) //get "uname" jQuery & Ajax part this line 'data:"uname="+username' from index.jsp file check not null
{
  //getable "uname" store in new "user_name variable"
  String id=request.getParameter("id");
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword); //create connection
       
        Statement pstmt=null; //create statement
        
        pstmt=con.createStatement(); //sql select query
        String query1 = "delete from  questions " +
                "where id="+id;
        String query2="delete from answer where qid="+id;
         //set where cluase condition username set is new user_name variable
        int rs=pstmt.executeUpdate(query1); //execute query and set in ResultSet object "rs".
        
    int rsq=pstmt.executeUpdate(query2);
        
        pstmt.close();
        con.close();//close connection
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
}%>