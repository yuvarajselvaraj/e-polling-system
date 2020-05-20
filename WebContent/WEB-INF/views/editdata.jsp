<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
String dburl="jdbc:mysql://localhost:3306/votingsystem"; 
String dbusername="root"; //database username   
String dbpassword ="+sec=2;$=10"; //database password
System.out.print("hi");
  String id=request.getParameter("id");
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword); //create connection
       
        Statement pstmt=null; //create statement
        
        pstmt=con.createStatement(); 
         ResultSet rs=pstmt.executeQuery("SELECT * FROM questions where id="+id); //execute query and set in ResultSet object "rs".
        System.out.println("hi");
        rs.next();%>
<form method="post" action="editdata1" role="form">
	<div class="modal-body">
		<div class="form-group">
		    <label for="id">ID</label>
		    <input type="text" class="form-control" id="id" name="id" value="<%=rs.getInt(1)%>" readonly="true"/>
		</div>
		<div class="form-group">
		    <label for="question">question</label>
	            <input type="text" class="form-control" id="question" name="question" value="<%=rs.getString(2)%>" />
		</div>
		<div class="form-group">
		    <label for="option1">Option1</label>
	            <input type="text" class="form-control" id="option1" name="option1" value="<%=rs.getString(3)%>" />
		</div>
		<div class="form-group">
		     <label for="option2">option2</label>
		     <input type="text" class="form-control" id="option2" name="option2" value="<%=rs.getString(4)%>" />
		</div>
		<div class="form-group">
                     <label for="option3">option3</label>
		     <input type="text" class="form-control" id="option3" name="option3" value="<%=rs.getString(5)%>" />
		</div>
		<div class="form-group">
                     <label for="option4">option4</label>
		     <input type="text" class="form-control" id="option4" name="option4" value="<%=rs.getString(6)%>" />
		</div>
		</div>
		<div class="modal-footer">
		     <input type="submit" class="btn btn-primary" name="submit" value="Update" />&nbsp;
		     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
	</form>
	<%    
    
        rs.close();
        pstmt.close();
        con.close();//close connection
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
</body>
</html>