<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
	<link href="/polling/resources/css/font-awesome.min.css" rel="stylesheet">
	<link href="/polling/resources/css/style2.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="/polling/resources/css/coin-slider.css" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
	<link href="//fonts.googleapis.com/css?family=Magra:400,700&amp;subset=latin-ext" rel="stylesheet">
</head>
<body >
<div class="main">
<div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="adminindex">Online<span> College</span>Voting System</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="adminhome"><span>Home Page</span></a></li>
          <li><a href="addpoll"><span>Add Poll</span></a></li>
          <li><a href="edit"><span>edit poll</span></a></li>
         <li><a href="index"><span>Logout</span></a></li>
        </ul>
        
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><img src="/polling/resources/images/1.jpg" width="960" height="360" alt="" /><span><br />
       <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  </div>
  </div>
<%
String dburl="jdbc:mysql://localhost:3306/votingsystem"; 
String dbusername="root"; //database username   
String dbpassword ="+sec=2;$=10"; //database password
System.out.print("hi");
  //getable "uname" store in new "user_name variable"
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword); //create connection
       
        Statement pstmt=null; //create statement
        
        pstmt=con.createStatement(); %>
        <div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="memberModalLabel">Edit Member Detail</h4>
            </div>
            <div class="dash">
             
            </div>
        </div>
    </div>
</div>
      <%   ResultSet rs=pstmt.executeQuery("SELECT * FROM questions "); //execute query and set in ResultSet object "rs".
        System.out.println("hi");%>
<div class="container" style="margin-top:35px">
<h4>table quick edit</h4>
<table class="table table-bordered table" id="tabledit">
<thead>
<tr><th>qid</th>
<th>question</th>
<th>option1</th>
<th>option2</th>
<th>option3</th>
<th>option4</th>
</tr></thead>
<tbody>
<% 
        while(rs.next())               
        {
        	System.out.println("hi");%>
        	<tr id="id<%=rs.getInt(1) %>">
        	<td style="color: black" ><%=rs.getInt(1)%></td>
        	<td style="color: black"><%=rs.getString("question")%></td>
            <td style="color: black"><%=rs.getString(2)%></td>
            <td style="color: black"><%=rs.getString(3)%></td>
            <td style="color: black"><%=rs.getString(4)%></td>
            <td style="color: black"><%=rs.getString(5)%></td>
            
            <td><a class="btn btn-small btn-primary"
                       data-toggle="modal"
                       data-target="#exampleModal"
                       data-whatever="<%=rs.getInt(1)%>">Edit</a></td>
            <td><button class="btn" id="button"><i class="fa fa-trash"></i></button></td>
            <td><input type="text" id="id" value="<%=rs.getInt(1)%>" hidden></td>
            </tr>
    <%    }
    
        rs.close();
        pstmt.close();
        con.close();//close connection
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
 </tbody>
 </table></div>
</body>
<script>
    $('#exampleModal').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var recipient = button.data('whatever') // Extract info from data-* attributes
          var modal = $(this);
          var dataString = 'id=' + recipient;
 alert(dataString);
            $.ajax({
                type: "GET",
                url: "editdata",
                data: dataString,
                cache: false,
                success: function (data) {
                    console.log(data);
                    modal.find('.dash').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });  
    })
    $("#button").click(function() {
                var del_id = $("#id").val();
                var info = 'id=' + del_id;
                alert(info);
                if (confirm("Sure you want to delete this post? This cannot be undone later.")) {
                    $.ajax({
                        type : "POST",
                        url : "process", //URL to the delete php script
                        data : info,
                        success : function(data) {
                        	$("#id"+del_id).hide();
                        }
                    });
                    
                }
                return false;
            });
 </script>

</html>