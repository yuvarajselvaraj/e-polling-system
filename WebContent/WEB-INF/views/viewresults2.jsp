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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
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
        <h1><a href="adminhome">Online<span> College</span>Voting System</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="adminhome"><span>Home Page</span></a></li>
         <div class="navbar">
  <div class="dropdown">
    <button class="dropbtn">operations
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
   <a href="addpoll" >Add poll</a> 
      <a href="edit">edit/delete poll</a>
    </div>
  </div>
</div> 
          <li><a href="viewresults"><span>View Polls</span></a></li>
           <li class="active"><a href="viewresults2"><span>View Results</span></a></li>
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
            ResultSet rs;
           
           
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select distinct qid from answer;");
          
          
            
       %>
     
         <table style="width:70%" border="2" >
             <form action="viewresults3" method="post">
               <h2 style="color: black">User Poll Details</h2><br><hr>

  <tr>
                          <th height="43"><font color="black">Select Question Id</th>
                          <td><select id="s1" name="qid" style="width:170px;" class="text" required="">
                            <% 
                       while(rs.next())
                       {
                           
                          
                       int qid = rs.getInt("qid");
                       
                             %>
               
          
                    <option value="<%=qid%>" ><%=qid%></option>
             <% }%>
                   
             
                              </select>
             
            
             </table>
            
             
              <tr>
              <td><br/>
                 <input type="submit" value="Submit"  style="height:30px; width:65px" />
              </td>
             </tr>
                     </form></center>
    
    
     
          
          
          
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
