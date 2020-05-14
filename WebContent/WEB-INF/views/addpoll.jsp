<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="org.springframework.ui.Model" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CleanMarketing</title>
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
      
        <h1><a href=" ">Online<span> College</span>Voting</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="adminhome"><span>Home Page</span></a></li>
          <li class="active"><a href="addpoll"><span>Add Poll</span></a></li>
          
           <li><a href="viewresults2"><span>View Results</span></a></li>
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
	<h2>Admin Add Poll</h2>
    <br><br>
           <form name="f" action="addpoll1" method="post" >  <center>
<table>

    
        <tr>
              <td>
                  <strong><font size="4" color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question:</font></strong>
              <textarea id="question" name="question" rows="3" cols="21" required=""></textarea> </td>
</tr>

        <tr>
              <td>
               <strong><font size="4" color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option A: </font></strong>
                <input type="text" name="option1" id="option1" style="height:30px; width:170px"></input>
              </td>
        </tr>
   
        <tr>
              <td>
               <strong><font size="4" color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option B: </font></strong>
                <input type="text" name="option2" id="option2"  style="height:30px; width:170px"></input>
              </td>
        </tr>
    
       <tr>
              <td>
               <strong><font size="4" color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option C: </font></strong>
                <input type="text" name="option3" id="option3"  style="height:30px; width:170px"></input>
              </td>
        </tr>
    
       <tr>
              <td>
               <strong><font size="4" color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option D: </font></strong>
                <input type="text" name="option4" id="option4"  style="height:30px; width:170px"></input>
              </td>
        </tr>
    
      
    
	  <tr>
              <td>
                 <input type="submit" value="addpoll"  style="height:30px; width:65px" />
              </td>
         </tr>
 
	</table>
	<div style="color: green">${msg}</div>
	<div style="color:red">${msg1}</div>
                    </center>
     </form>
          
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
