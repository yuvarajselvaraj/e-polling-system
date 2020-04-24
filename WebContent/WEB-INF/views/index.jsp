<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Validate Login & Register Forms Flat Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Validate Login & Register Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);
		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->

	<!-- css files -->
	<link rel="stylesheet" href="/polling/resources/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="/polling/resources/css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Magra:400,700&amp;subset=latin-ext" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!-- title -->
	<h1>
		welcome to E-polling system<br>students login
	</h1>
	<!-- //title -->

	<!-- content -->
	<div class="container-agille">
		<div class="formBox level-login">
			<div class="box boxShaddow"></div>
			<div class="box loginBox">
				<h3>Login Here</h3>
				<form class="form" action="slogin" method="post">
					<div class="f_row-2">
						<input type="text" class="input-field" placeholder="rollno" name="rollno" required>
					</div>
					<div class="f_row-2 last">
						<input type="password" name="password" placeholder="Password" class="input-field" required>
					</div>
					<input class="submit-w3" type="submit" value="Login">
					<div class="f_link">
						<a href="forgetmail" >Forgot your password?</a>
					</div>
					<div class="submit-w3">
					<a href="admin">If admin click here</a>
			</div>
				</form>
				<div style="color: red" >${error} 
			<div style="color:green">${msg}
		</div>
			</div>
				</div>
			
			<div class="box registerBox wthree">
				<span class="reg_bg"></span>
				<h3>Register</h3>
				<form class="form" action="sregister" method="post">
					<div class="f_row-2">
						<input type="text" class="input-field" placeholder="rollno" name="rollno" required>
					</div>	
					<div class="f_row-2">
						<input type="email" class="input-field" placeholder="email" name="email" required>
					</div>
					<div class="f_row-2 last">
						<input type="password" name="password" placeholder="Password" id="password1" class="input-field" required>
					</div>
					<div class="f_row-2 last">
						<input type="password" name="spassword1" placeholder="Confirm Password" id="password2" class="input-field" required>
					</div>
					<input class="submit-w3" type="submit" value="Register">
					<div class="submit-w3">	
			<a href="admin" >If admin click here</a></div>
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
		<h2>&copy; 2018 E-Polling system. All rights reserved 
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
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
	<!-- //js files -->


</body>

</html>
