<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
body {
	background-image: url("resources/image/bckgnd-img.jpg");
	-moz-background-size: cover;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: top center !important;
	background-repeat: no-repeat !important;
	background-attachment: fixed;
}

.form-style-1 {
	margin: 10px auto;
	max-width: 400px;
	padding: 20px 12px 10px 20px;
	font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

.form-style-1 li {
	padding: 0;
	display: block;
	list-style: none;
	margin: 10px 0 0 0;
}

.form-style-1 label {
	margin: 0 0 3px 0;
	padding: 0px;
	display: block;
	font-weight: bold;
}

.form-style-1 input[type=text], .form-style-1 input[type=date],
	.form-style-1 input[type=datetime], .form-style-1 input[type=number],
	.form-style-1 input[type=search], .form-style-1 input[type=time],
	.form-style-1 input[type=url], .form-style-1 input[type=email],
	textarea, select {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	border: 1px solid #BEBEBE;
	padding: 7px;
	margin: 0px;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;
	outline: none;
}

.form-style-1 input[type=text]:focus, .form-style-1 input[type=date]:focus,
	.form-style-1 input[type=datetime]:focus, .form-style-1 input[type=number]:focus,
	.form-style-1 input[type=search]:focus, .form-style-1 input[type=time]:focus,
	.form-style-1 input[type=url]:focus, .form-style-1 input[type=email]:focus,
	.form-style-1 textarea:focus, .form-style-1 select:focus {
	-moz-box-shadow: 0 0 8px #88D5E9;
	-webkit-box-shadow: 0 0 8px #88D5E9;
	box-shadow: 0 0 8px #88D5E9;
	border: 1px solid #88D5E9;
}

.form-style-1 .field-divided {
	width: 49%;
}

.form-style-1 .field-long {
	width: 100%;
}

.form-style-1 .field-select {
	width: 100%;
}

.form-style-1 .field-textarea {
	height: 100px;
}

.showDetails {
	background-color: #222222;
}

div#finalDetails {
	background: #222222;
}

.form-style-1 input[type=submit], .form-style-1 input[type=button] {
	background: #4B99AD;
	padding: 8px 15px 8px 15px;
	border: none;
	color: #fff;
}

.form-style-1 input[type=submit]:hover, .form-style-1 input[type=button]:hover
	{
	background: #4691A4;
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
}

.form-style-1 .required {
	color: red;
}

.submit-button {
	background: #4B99AD;
	padding: 8px 15px 8px 15px;
	border: none;
	color: #fff;
}

.submit-button:hover {
	background: #4691A4;
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
}

h3 {
	padding: 0px;
	margin: 0px;
}

h1 {
	font-family: "Times New Roman", Times, serif;
	font-style: oblique;
}

.buttonAll {
	background-color: #247BA0; /* Green */
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
}

.buttonAll:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

#psw {
	padding: 6px;
}

#Cpsw {
	padding: 6px;
}

ul.form-style-1 {
	margin-right: 358px;
}

span.error {
	color: red;
}
h1 {
    color: #ffffff;
}
</style>
</head>
<body>
	<div class="fullBody">
		<h1 align="center">
			<u>Group Amount Calculator</u>
		</h1>
		<div id="division1">
			<div id="outerDiv">
				<div id="formDiv_1">
					<form id="form_1">
						<ul class="form-style-1">
							<li><label>Name:<span class="required">*</span></label> <input
								type="text" id="name" name="field" placeholder="Enter Name" /></li>
							<li><label>E-mail:<span class="required">*</span></label> <input
								type="email" id="email" name="emailaddress"
								placeholder="abc@gmail.com" /></li>
							<li><label>Password:<span class="required">*</span></label><input
								id="psw" type="password" placeholder="Enter Password" name="psw" />
							</li>
							<li><label>Confirm Password:<span class="required">*</span></label><input
								id="Cpsw" type="password" placeholder="Confirm Password"
								name="Confirmpsw" /></li>
						</ul>
					</form>
				</div>
			</div>
			<div align="center">
				<button id="create" class="buttonAll" onclick="signUpSubmit()">SIGN
					UP</button>
			</div>
		</div>

		<div align="center">
			<footer>&copy; Copyright 2018 Nam Goa Gang 2017</footer>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
	});
	var valid = false;

	function validate() {

		$('.error').hide();

		//name validtion
		if ($('#name').val() == null || $('#name').val() == ""
				|| $('#name').val() == 'undefined') {

			$("#name")
					.after("<span class='error'>Please Enter a Name </span> ");
			valid = false;
		} else {
			valid = true;
		}

		//email validtion
		if ($('#email').val() == null || $('#email').val() == ""
				|| $('#email').val() == 'undefined') {

			$("#email").after(
					"<span class='error'>Please Enter a Email ID </span> ");
			valid = false;
		} else if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(
				'#email').val()))) {
			$("#email")
					.after(
							"<span class='error'>Please Enter a valid Email ID </span> ");
			valid = false;
		} else {
			valid = (valid == true) ? true : false;
		}

		//password validtion
		if ($('#psw').val() == null || $('#psw').val() == ""
				|| $('#psw').val() == 'undefined') {

			$("#psw").after(
					"<span class='error'>Please Enter a Password </span> ");
			valid = false;
		} else {
			valid = (valid == true) ? true : false;
		}

		if ($('#Cpsw').val() == null || $('#Cpsw').val() == ""
				|| $('#Cpsw').val() == 'undefined') {
			$("#Cpsw")
					.after(
							"<span class='error'>Please Enter a Confirm Password </span> ");
			valid = false;
		} else if (!($('#psw').val()==$('#Cpsw').val())) {
			$("#Cpsw")
					.after(
							"<span class='error'>Passwords do not match</span> ");
			valid = false;
		} else {
			valid = (valid == true) ? true : false;
		}

		
		
		
		return valid;
	}

	function signUpSubmit() {
		
		$('.error').hide();
		//check if password and password2 are equal.If equal continue else return false and show a message for user.
		valid = validate();
		//do the null check for the mandatory fields
		if (valid) {

			var dataArray = {}
			//You need to take data from the fields using Jquery i.e $('#ID').val()
			dataArray["name"] = $('#name').val();
			dataArray["password"] = $('#psw').val();
			dataArray["email"] = $('#email').val();
			//similarly set other fields

			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "signup",
				data : JSON.stringify(dataArray),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					
						if (data.emailstatus == 'F') {
							alert(" SUCESS!!!");
							window.location = "login.jsp";
						}else if(data.emailstatus == 'S'){
							
							$("#email").after(
							"<span class='error'>Email already exists,pls login</span> ");
						}
				},
				error : function(e) {
					alert("ERROR: ", e);
				},
				done : function(e) {
					alert("DONE");
				}
			});

		}
	}
</script>

</html>