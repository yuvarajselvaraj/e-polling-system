<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>E-polling</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Validate Login & Register Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<link rel="stylesheet" href="/polling/resources/css/style.css" type="text/css" media="all" />
	<link href="/polling/resources/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
	<script type="text/javascript" src="/polling/resources/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/polling/resources/js/script.js"></script>
	<link href="//fonts.googleapis.com/css?family=Magra:400,700&amp;subset=latin-ext" rel="stylesheet">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);
		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		
		
	</script>	
</head>

<body>
<div class="alert alert-success" id="success-alert" >
  <strong>${msg}</strong>
</div>
<div class="alert alert-warning" role="alert" id="warning-alert">
  <strong>${error } </strong> 
</div>
	<!-- title -->
	<h1>
		welcome to E-polling system<br>Login
	</h1>
	<!-- //title -->

	<!-- content -->
	<div class="container-agille">
		<div class="formBox level-login">
			<div class="box boxShaddow"></div>
			<div class="box loginBox">
				<h3>Login Here</h3>
				<form class="form" action="login" method="post">
					<div class="f_row-2">
						<input type="text" class="input-field" placeholder="rollno" name="rollno" id="rollno" onkeyup="loadxml()" required>
					</div>
					<span id="available"></span>
					<div class="f_row-2 last">
						<input type="password" name="password" placeholder="Password" class="input-field" required>
					</div>
					<input class="submit-w3" type="submit" value="Login">
					<div class="f_link">
						<a href="forgetmail" >Forgot your password?</a>
					</div>
				</form>
				
		</div>
			
				
			<div class="box registerBox wthree">
				<span class="reg_bg"></span>
				<h3>Register</h3>
				<form class="form" action="register" method="post">
					<div class="f_row-2">
						<input type="text" class="input-field" placeholder="rollno" name="rollno" id="rollno_r" required>
					</div>	
					<span id="available_r"></span>
					<div class="f_row-2">
						<input type="email" class="input-field" placeholder="email" name="email" required>
					</div>
					<div class="f_row-3">
						<input type="text" class="input-field" placeholder="firstname" name="firstname" required>
					</div>
					<div class="f_row-4">
						<input type="text" class="input-field" placeholder="lastname" name="lastname" required>
					</div>
					<div class="f_row-5">
					<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="designation" id="inlineRadio1" value="staff">
						  <label class="form-check-label" for="designation">STAFF</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="designation" id="inlineRadio2" value="student">
						  <label class="form-check-label" for="designation">STUDENT</label>
						</div>
						</div>
					<div class="f_row-2 last">
						<input type="password" name="password" placeholder="Password" id="password1" class="input-field" required>
					</div>
					<div class="f_row-2 last">
						<input type="password" name="spassword1" placeholder="Confirm Password" id="password2" class="input-field" required>
					</div>
					
					<input class="submit-w3" type="submit" value="Register">
				</form>
			</div>
						<a href="#" class="regTag icon-add">
				<i class="fa fa-repeat" aria-hidden="true"></i>

			</a>
			</div>

			</div>
			
	
	<div>
	
	</div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer-w3ls">
		<h2>&copy; 2020 E-Polling system. All rights reserved 
		</h2>
	</div>
	<!-- //copyright -->


	<!-- js files -->
	<!-- Jquery -->
	<script src="/polling/resources/js/jquery-2.2.3.min.js"></script>
	<!-- //Jquery -->
	<!-- input fields js -->
	<script src="/polling/resources/js/input-field.js"></script>
	<!-- //input fields js -->

	<!-- password-script -->
	<script>
		window.onload = function () {
			
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}
		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
		
		}
		   
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
		        $('#rollno').on('input', function() {
					var rollno=$("#rollno").val();
				
					$.ajax({
						url:"check",
						method: "POST",
					data:"rollno="+rollno,
					type:"text",
					success:function(data)
					{
						$("#available").html(data);
					}
					});
					
				});
		        $('#rollno_r').on('input', function() {
					var rollno=$("#rollno_r").val();
				
					$.ajax({
						url:"check",
						method: "POST",
					data:"rollno_r="+rollno,
					type:"text",
					success:function(data)
					{
						$("#available_r").html(data);
					}
					});
					
				});
		       
		     });
		    
	</script>
	<!-- //password-script -->
	<!-- //js files -->


</body>

</html>
