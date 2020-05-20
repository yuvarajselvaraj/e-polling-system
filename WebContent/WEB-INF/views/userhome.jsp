<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Voting</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link href="/polling/resources/css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/polling/resources/css/coin-slider.css" />
<script type="text/javascript" src="/polling/resources/js/cufon-yui.js"></script>
<script type="text/javascript" src="/polling/resources/js/cufon-times.js"></script>
<script type="text/javascript" src="/polling/resources/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/polling/resources/js/script.js"></script>
<script type="text/javascript" src="/polling/resources/js/coin-slider.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
 <script type="text/javascript" language="javascript">
 function preventBack(){window.history.forward();}
 setTimeout("preventBack()", 0);
 window.onunload=function(){null};
   $(document).ready(function() {
      var title = '${msg}';
      var title1='${error}';
      if(title!=null && title !="")
    	  {
    	  document.getElementById("warning-alert").style.display='none';
    	  document.getElementById("success-alert").style.display='block';
    		    $("#success-alert").fadeTo(2000, 500).slideUp(500, function() {
    		      $("#success-alert").slideUp(500);
    		    });
    	  }
      else if(title1!=null && title1 !="")
    	  {
    	  document.getElementById("success-alert").style.display='none';
    	  document.getElementById("warning-alert").style.display='block';
		    $("#warning-alert").fadeTo(2000, 500).slideUp(500, function() {
		      $("#warning-alert").slideUp(500);
		    });
    	  }
      else 
    	  {
    	  document.getElementById("warning-alert").style.display='none';
    	  document.getElementById("success-alert").style.display='none';
    	  }
     
   });
   </script>
   
</head>
<body>
<div class="alert alert-success" id="success-alert" >
  <strong>${msg}</strong>
</div>
<div class="alert alert-warning" role="alert" id="warning-alert">
  <strong>${error } </strong> 
</div>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="userhome">Online<span> College</span>Voting System</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="userhome"><span>Home Page</span></a></li>
          <li><a href="viewpoll"><span>View Poll</span></a></li>
          <li><a href="index"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><img src="/images/1.jpg" width="960" height="360" alt="" /><span><br />
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
	<h2><span> 
        
    <center>  <h2>welcome ${uid}</h2></span></h2>
    </div>
          <div class="clr"></div>
        </div>
     </div>
      		
			</div>
				</form>
				
			
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
