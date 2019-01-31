
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.3/FileSaver.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
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
	width: 120px;
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

.yellowMessage{
  color: yellow;
  font-family: Courier New;
  font-size: xx-large;
}
.redMessage{
  color: red;
  font-family: Courier New;
  font-size: xx-large;
}
.greenMessage{
  color: green;
  font-family: Courier New;
  font-size: xx-large;
}

</style>
</head>
<body >
	<div class="fullBody jumbotron text-center">
		<h1 align="center">
			<u>Group Amount Calculator</u>
		</h1>

	</div>
	<div id="details" align="center">
	    <div id="deatilsMessage"></div>
		
		
	</div>
	<div align="center">
			<button id="detailsbutton" class="buttonAll" onclick="window.location.href='amountInTable.jsp'">Details</button>
			<button id="reload2" class="buttonAll" onclick="window.location.href='index.jsp'">Enter Details Again</button>
		</div>
	<div id="profile">
		<img src="resources/image/profile.png" id="srcProfile"
			onmouseover="profile()" />
	</div>
	<div>
		<input class="buttonAll" id="logoutButton" type="submit" value="LOGOUT"
			onclick="logout()">
	</div>
	<button class="buttonAll" onclick="generate();">Generate Screenshot »</button>
</body>
<script type="text/javascript">
$(document).ready(function() {
	
	loadMessages();
});

function loadMessages(){
	var dataArrayLogin = {}
	dataArrayLogin["userId"] = '${sessionScope.USER_ID}';
	dataArrayLogin["userMail"] = '${sessionScope.MAIL}';
	$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "getMessages",
				data : JSON.stringify(dataArrayLogin),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					$('#deatilsMessage').append(data.messageHtml); 
				},
				error : function(e) {
					alert("ERROR: ", e);
				},
				done : function(e) {
					alert("DONE");
				}
			});
	
	//screenshotofAmmountsummary();
}


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
	
	(function(exports) {
	    function urlsToAbsolute(nodeList) {
	        if (!nodeList.length) {
	            return [];
	        }
	        var attrName = 'href';
	        if (nodeList[0].__proto__ === HTMLImageElement.prototype || nodeList[0].__proto__ === HTMLScriptElement.prototype) {
	            attrName = 'src';
	        }
	        nodeList = [].map.call(nodeList, function(el, i) {
	            var attr = el.getAttribute(attrName);
	            if (!attr) {
	                return;
	            }
	            var absURL = /^(https?|data):/i.test(attr);
	            if (absURL) {
	                return el;
	            } else {
	                return el;
	            }
	        });
	        return nodeList;
	    }

	    function screenshotPage() {
	        var wrapper = document.getElementById('details');
	        html2canvas(wrapper, {
	        	 background:'#fff', 
	            onrendered: function(canvas) {
	                canvas.toBlob(function(blob) {
	                    saveAs(blob, 'SummaryScreenshot.png');
	                });
	            }
	        });
	    }

	    function addOnPageLoad_() {
	        window.addEventListener('DOMContentLoaded', function(e) {
	            var scrollX = document.documentElement.dataset.scrollX || 0;
	            var scrollY = document.documentElement.dataset.scrollY || 0;
	            window.scrollTo(scrollX, scrollY);
	        });
	    }

	    function generate() {
	        screenshotPage();
	    }
	    exports.screenshotPage = screenshotPage;
	    exports.generate = generate;
	})(window);
	
</script>
</html>