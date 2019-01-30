
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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

.finalDetails {
	background-color: #222222;
}

h1 {
	color: #ffffff;
}

#profile {
	position: relative;
}

#profile img {
	position: absolute;
	bottom: 338px;
	right: 0px;
	width: 22px;
}

input#logoutButton {
	position: relative;
	bottom: 360px;
	left: 0px;
	width: 78px;
}

.jumbotron {
	background: none
}

.jumbotron .h1, .jumbotron h1 {
	font-size: 45px;
	color: white;
}

div#details {
	background-color: #6acff0;
}

#amountList {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#amountList td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#amountList th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #247BA0;
	color: white;
}
</style>
</head>
<body>
	<div class="fullBody jumbotron text-center">
		<h1 align="center">
			<u>Group Amount Calculator</u>
		</h1>

	</div>
	<div id="details" align="center">
		<h2>Amount Paid Lists</h2>
		<div id="totAmountDetails">Total Amount:-100 | Total Person:-1 |
			Per Head:-100</div>
		<table id="amountList" style="width: 100%; height: 5px;">
			<thead>
				<tr>
					<th>Name</th>
					<th>Amount</th>
					<th>Reason</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td align="center">Akshay</td>
					<td align="center">100</td>
					<td align="center">-</td>
				</tr>
				<tr>
					<td align="center">Latha</td>
					<td align="center">200</td>
					<td align="center">-</td>
				</tr>
				<tr>
					<td align="center">Madhurya</td>
					<td align="center">0</td>
					<td align="center">-</td>
				</tr>
			</tbody>
		</table>
		<div align="center">
			<button id="amountSummary" class="buttonAll">Amount Summary</button>
			<button id="reload1" class="buttonAll">Enter Details Again</button>
		</div>
	</div>
	<div id="profile">
		<img src="resources/image/profile.png" id="srcProfile"
			onmouseover="profile()" />
	</div>
	<div>
		<input id="logoutButton" type="submit" value="LOGOUT"
			onclick="logout()">
	</div>
	</div>
</body>
<script type="text/javascript">
	function profile() {
		$("#profile").attr('title', "Logged in as ${sessionScope.MAIL}");
	}

	function logout() {

		var dataArrayscreenshot = {};

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "logout",
			data : JSON.stringify(dataArrayscreenshot),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {

				alert("logged out successfully");
				window.location = "login.jsp";
			},
			error : function(e) {
				alert("ERROR: ", e);
			},
			done : function(e) {
				alert("DONE");
			}
		});
	}
</script>
</html>