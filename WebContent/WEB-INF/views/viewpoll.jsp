<%@page import="java.sql.ResultSet"%>
<%@page import="com.wipro.polling.Dbconnection.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DatabaseMetaData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Voting</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/polling/resources/css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/polling/resources/css/coin-slider.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<script type="text/javascript" src="/polling/resources/js/cufon-yui.js"></script>
<script type="text/javascript" src="/polling/resources/js/cufon-times.js"></script>
<script type="text/javascript" src="/polling/resources/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/polling/resources/js/script.js"></script>
<script type="text/javascript" src="/polling/resources/js/coin-slider.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="userhome">Online<span> College</span>Voting</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="userhome"><span>Home Page</span></a></li>
          <li class="active"><a href="viewpoll"><span>View Poll</span></a></li>
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
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr"></div>
          <div class="post_content">
           
              
             <center>
	 <%
            Connection con;
            Statement st;
            ResultSet rs,rs1;
            con = Dbconnection.getConnection();
            st = con.createStatement();
            Statement st1=con.createStatement();
            DatabaseMetaData dbm = con.getMetaData();
         // check if "employee" table is there
            rs = st.executeQuery("select * from questions");
                     
            %>
         <table style="width:70%" border="2" >

               <h2 style="color: black">Uploaded File Details</h2><br><hr>

<tr>
      <th><font color="green"></font>Id</th>
     <th><font color="green"></font>______Question______</th>
     <th><font color="green"></font> Option_A</th>
     <th><font color="green"> </font>Option_B</th>
     <th><font color="green"> </font>Option_C</th>  
     <th><font color="green"></font> Option_D</th>  
     <th><font color="green" align-content="center"></font> Vote</th>     
</tr>
<tr>
    <%
while(rs.next()){
	
	
%>
<%
	ResultSet res1;
	res1=st1.executeQuery("select count(*) from answer where qid="+rs.getString(1)+" and rollno='"+session.getAttribute("uid")+"'");     
	res1.next();%>
	<th style="color: black"><%=rs.getString(1)%></th>
    <th style="color: black"><%=rs.getString(6)%></th>
    <th style="color: black"><%=rs.getString(2)%></th>
    <th style="color: black"><%=rs.getString(3)%></th>
    <th style="color: black"><%=rs.getString(4)%></th>
    <th style="color: black"><%=rs.getString(5)%></th>
	<% if(res1.getInt(1)==0)
	{%>
     <td ><button  id="vote" class="btn btn-outline-success"
     onclick="window.location.href='viewpoll1?id=<%=rs.getInt("Id")%>&que=<%=rs.getString("question")%>&a=<%=rs.getString("option1")%>&b=<%=rs.getString("option2")%>&c=<%=rs.getString("option3")%>&d=<%=rs.getString("option4")%>';" >Vote</button> </td>   

	<%}
	else{%>
     <td ><button  id="vote" class="btn btn-link"
     onclick="window.location.href='javascript:void(0)9';" disabled>Vote</button> </td>   
     
	<%}
	%>
</tr>
</hr> 
       <%}%>                 
            
             </table>
             
                    </center>
     
               
    </div>
          <div class="clr"></div>
        </div>
     </div>
      
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
