<%@page import="java.sql.ResultSet"%>
<%@page import="com.wipro.polling.Dbconnection.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Voting</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/polling/resources/css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/polling/resources/css/coin-slider.css" />
<script type="text/javascript" src="/polling/resources/js/cufon-yui.js"></script>
<script type="text/javascript" src="/polling/resources/js/cufon-times.js"></script>
<script type="text/javascript" src="/polling/resources/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/polling/resources/js/script.js"></script>
<script type="text/javascript" src="/polling/resources/js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="adminhome">Online<span> College</span>Voting</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="adminhome"><span>Home Page</span></a></li>
          <li><a href="addpoll"><span>Add Poll</span></a></li>
          <li class="active"><a href="viewresults"><span>View Polls</span></a></li>
           <li><a href="viewresults2"><span>View Results</span></a></li>
         <li><a href="admin"><span>Logout</span></a></li>
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
         
             double totalrecords=0;
            double[] count= new double[4];
            double increment=0;
             
            Connection con;
            Statement st;
            ResultSet rs;
            Statement st1;
            ResultSet rs1;
           
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from questions,answer where questions.id=answer.qid");
   
           
            
       %>
     
         <table style="width:70%" border="2" >

               <h2 style="color: black">User Poll Details</h2><br><hr>

<tr>
     <th><font color="green">Question_Id</th>
     <th><font color="green">______Question______</th>
     <th><font color="green"> Option_A</th>
     <th><font color="green"> Option_B</th>
     <th><font color="green"> Option_C</th>  
     <th><font color="green"> Option_D</th>
     <th><font color="green"> Answer</th>
     <th><font color="green"> User_Id</th>
    
</tr>
    <%
while(rs.next()){
  
    totalrecords++;
    
   
%>
<tr>
    <th style="color: black"><%=rs.getString(1)%></th>
    <th style="color: black"><%=rs.getString(6)%></th>
    <th style="color: black"><%=rs.getString(2)%></th>
    <th style="color: black"><%=rs.getString(3)%></th>
    <th style="color: black"><%=rs.getString(4)%></th>
    <th style="color: black"><%=rs.getString(5)%></th>
    <th style="color: black"><%=rs.getString(8)%></th>
    <th style="color: black"><%=rs.getString(10)%></th>
   
 </tr> 
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
