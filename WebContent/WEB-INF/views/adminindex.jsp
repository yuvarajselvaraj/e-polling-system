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
		Welcome to E-polling system<br>Admin login
	</h1>
	<!-- //title -->

	<!-- content -->
	<div class="container-agille">
		<div class="formBox level-login">
			<div class="box boxShaddow"></div>
			<div class="box loginBox">
				<h3>Login Here</h3>
				<form class="form" action="adminhome1" method="post">
					<div class="f_row-2">
						<input type="email" class="input-field" placeholder="Username" name="email" required>
					</div>
					<div class="f_row-2 last">
						<input type="password" name="password" placeholder="Password" class="input-field" required>
					</div>
					<input class="submit-w3" type="submit" value="Login">
					<div class="f_link">
						<a href="forgetmail" >Forgot your password?</a>
					</div>
					<div class="submit-w3">
					<a href="student">If student click here</a>
			</div>
				</form>
				<div style="color: red" >${error} 
			<div style="color:green">${msg}
		</div>
			</div>
				</div>
			<div class="box forgetbox agile">
				<a href="#" class="back icon-back">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					 viewBox="0 0 199.404 199.404" style="enable-background:new 0 0 199.404 199.404;" xml:space="preserve">
						<polygon points="199.404,81.529 74.742,81.529 127.987,28.285 99.701,0 0,99.702 99.701,199.404 127.987,171.119 74.742,117.876 
			  199.404,117.876 " />
					</svg>
				</a>
			</div>
			<div class="box registerBox wthree">
				<span class="reg_bg"></span>
				<h3>Register</h3>
				<form class="form" action="adminsignup" method="post">
				<div class="f_row-2">
						<input type="text" class="input-field" placeholder="first name" name="firstname" required>
					
						<input type="text" class="input-field" placeholder="last name" name="lastname" required>
					</div>
					<div class="f_row-2">
						<input type="email" class="input-field" placeholder="email" name="email" required>
					</div>
					<div class="f_row-2 last">
						<input type="password" name="password" placeholder="Password" id="password1" class="input-field" required>
					</div>
					<div class="f_row-2 last">
						<input type="password" name="password1" placeholder="Confirm Password" id="password2" class="input-field" required>
					</div>
					<input class="submit-w3" type="submit" value="Register">
					<div class="submit-w3">	
			<a href="student" >If student click here</a></div>
				</form>
			
			</div>
			<a href="#" class="regTag icon-add">
				<i class="fa fa-repeat" aria-hidden="true"></i>

			</a>
		</div>
		
	</div>
	
	<div>
	
	</div>
	<div class="footer-w3ls">
		<h2>&copy; 2020 E-Polling system. All rights reserved 
		</h2>
	</div>
	
	<script src="/polling/resources/js/jquery-2.2.3.min.js"></script>
	<script src="/polling/resources/js/input-field.js"></script>
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
	<script> 
    window.intergramId = "866395637";
    window.intergramCustomizations = {
        titleClosed: 'Closed chat title',
        titleOpen: 'Opened chat title',
        introMessage: 'First message when the user opens the chat for the first time',
        autoResponse: 'A message that is sent immediately after the user sends its first message',
        autoNoResponse: 'A message that is sent one minute after the user sends its first message ' +
                        'and no response was received',
        mainColor: "#E91E63", // Can be any css supported color 'red', 'rgb(255,87,34)', etc
        alwaysUseFloatingButton: false // Use the mobile floating button also on large screens
    };
</script>
<script id="intergram" type="text/javascript" src="https://www.intergram.xyz/js/widget.js"></script>

</body>

</html>