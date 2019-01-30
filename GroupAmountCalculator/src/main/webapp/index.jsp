
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

.finalDetails {
	background-color: #222222;
}

div#totAmountDetail2, div#totAmountDetail1 {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	size: 1000px;
	color: white;
}
/*table for details */
#amountList {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#amountList td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#amountList tr:nth-child(even) {
	background-color: #f2f2f2;
}

#amountList tr:hover {
	background-color: #ddd;
}

#amountList th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #247BA0;
	color: white;
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
                     <li id="warningOneDiv">
                        <label>Name:<span class="required">*</span></label> 
                        <input type="text" id="name" class="field-divided" placeholder="Name" />
                        <span id="warningOne1" style="color: red"></span>
                     </li>
                     <li id="warningTwoDiv">
                         <label>Amount:<span class="required">*</span></label> 
                         <input type="text" id="amount" class="field-divided" placeholder="Amount" />
                         <span id="warningTwo1" style="color: red"></span></li>
                     <li>
                         <label>Reason:</label>
                         <input type="text" id="reason" class="field-divided" placeholder="Why Amount Is Spent..." />&nbsp;
                     </li>
                  </ul>
               </form>
            </div>
         </div>
         <div align="center">
            <button onclick="submit()" class="buttonAll">Submit</button>
            <button onclick="haveMoreDetails()" class="buttonAll">Have More</button>
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
	var nameAmountMap = new Object();

	var x;
	var html = "";
	var count = 1;
	var html2 = "";
	var totalAmount = 0;
	var finalAmountHtml = "";
	var perHeadAmount = 0;
	var finalDetailList = "";
	var name = "";
	var amount = "";
	var reason = "";
	var status = 0;
	
	
	var nameList=[];
	var amountList=[];
	var reasonList=[];
	$(document).ready(function() {
						
						});
						
						function haveMoreDetails(){
							var name=$('#name').val();
							var amount=$('#amount').val();
							var reason=$('#reason').val();
							
							if(validate(name,amount)){
								addToList(name, amount, reason);
								$('#name').val('');
								$('#amount').val('');
								$('#reason').val('');
							}else{
								return false;
							}
							
							
						}
						
						function validate(name, amount) {
							$('#warningOne').val('');
							$('#warningTwo').val('');
							
							if (name == undefined || name == "") {
								$("#warningOne").text("Please select a name");
								return false;
							} else if (amount == undefined || amount == ""|| amount == null) {
								$("#warningTwo").text("Amount cannot be blank");
								return false;
							} else if (!(/^\d+$/.test(amount))) {
								$("#warningTwo").text("Amount should be a number");
								return false;
							}
							return true;
						}

						function addToList(name, amount, reason) {
							nameList.push(name);
							amountList.push(amount);
							if(amount == undefined || amount == ""|| amount == null)
								reason="-";
							reasonList.push(reason);
						}
						
						
						function submit() {
							
							var name=$('#name').val();
							var amount=$('#amount').val();
							var reason=$('#reason').val();
							
							if(validate(name,amount)){
								addToList(name, amount, reason);
							}else{
								return false;
							}
							
							    /* if(nameList.length==0||amountList.length==0){
							    	$("#warningOne").text("Please enter values before submitting");
							    	return false;
							    } */
								var dataArray = {}
								dataArray["userMail"] = '${sessionScope.MAIL}';
								dataArray["name"] = nameList;
								dataArray["amount"] = amountList;
								dataArray["reason"] = reasonList;
								$.ajax({
											type : "POST",
											contentType : "application/json",
											url : "amountSubmit",
											data : JSON.stringify(dataArray),
											dataType : 'json',
											timeout : 100000,
											success : function(data) {
												if (data.status == 'S') {
													alert("SUCCESS");
													window.location = "amountInSentence.jsp";
												} else if (data.loginmailstatus == 'F') {
													alert("Fail");
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

						
						
						var htmltable = "";
						function showDetails(name, amount, reason) {
							if (reason == "" || reason == null) {
								reason = "-";
							}
							html2 = "<tr style=\"background-color: #f2f2f2;}\"><td align=\"center\">"
									+ name
									+ "</td><td align=\"center\">"
									+ Math.round(parseFloat(amount))
									+ "</td><td align=\"center\">"
									+ reason
									+ "</td></tr>"
							$(html2).appendTo("#amountList tbody");
						}

						

	function profile()
	{
		$("#profile").attr('title', "Logged in as ${sessionScope.MAIL}");
	}
	
	function screenshotofAmmountDetails() {

		var dataArrayscreenshot = {};

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "screenshotofAmmountDetails",
			data : JSON.stringify(dataArrayscreenshot),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {

			},
			error : function(e) {
				alert("ERROR: ", e);
			},
			done : function(e) {
				alert("DONE");
			}
		});

	}
	function screenshotofAmmountsummary() {

		var dataArrayscreenshot = {};

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "screenshotofAmmountsummary",
			data : JSON.stringify(dataArrayscreenshot),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {

			},
			error : function(e) {
				alert("ERROR: ", e);
			},
			done : function(e) {
				alert("DONE");
			}
		});
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