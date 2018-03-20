<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
#content{
	width: 50%;
	margin: 0 auto;
}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
#login-session{
	display: block;
}

#forgot-session{
	display: none;
}

#register-session{
	display: none;
}
</style>

<script>
	$(document).ready(function(){
		$(".forgot").click(function(){
			$("#login-session").css('display','none');
			$("#register-session").css('display','none');
			$("#forgot-session").css('display','block');
		});
		$(".backtosignin").click(function(){
			$("#login-session").css('display','block');
			$("#forgot-session").css('display','none');
			$("#register-session").css('display','none');
		});
		$("#register").click(function(){
			$("#login-session").css('display','none');
			$("#forgot-session").css('display','none');
			$("#register-session").css('display','block');
		});
	});

</script>

<cms:enable-ade/>
</head>
<body>
<c:if test="${cms.isEditMode}">
	<div id="toolbar-placeholder" style="height:55px"></div>
</c:if>
<div id="content">
	<div id="login-session">
	<h2>Login Form</h2>
		<form action="/action_page.php" >
		  <div class="imgcontainer">
		    <img src="<cms:link>/system/modules/com.myjourney/resources/images/w3images/img_avatar2.png</cms:link>" alt="Avatar" class="avatar">
		  </div>
		
		  <div class="container">
		    <label for="uname"><b>email</b></label>
		    <input type="text" placeholder="Enter email" name="email" required>
		
		    <label for="psw"><b>Password</b></label>
		    <input type="password" placeholder="Enter Password" name="psw" required>
		        
		    <button type="submit">Login</button>
		    <a href="#" id="register" style="text-align:center;">Register</a>
		   <!--  <label>
		      <input type="checkbox" checked="checked" name="remember"> Remember me
		    </label> -->
		  </div>
		
		  <div class="container" style="background-color:#f1f1f1">
		    <a href="<cms:link>/index.html</cms:link>"><button type="button" class="cancelbtn">Cancel</button></a>
		    <span class="psw"> <a href="#" class="forgot">Forgot password?</a></span>
	  	   </div>
		</form>	
	</div>
	<div id="forgot-session">
		<h2>Reset Password Form</h2>
		<form action="" method="post">
			<div class="imgcontainer">
		    <img src="<cms:link>/system/modules/com.myjourney/resources/images/w3images/img_avatar2.png</cms:link>" alt="Avatar" class="avatar">
		  </div>
		
		  <div class="container">
		    <label for="uname"><b>email</b></label>
		    <input type="text" placeholder="Enter email" name="email" required>
		
		    <button type="submit">Reset Password</button>
		  </div>
		
		  <div class="container" style="background-color:#f1f1f1">
		  	<a href="<cms:link>/index.html</cms:link>"><button type="button" class="cancelbtn">Cancel</button></a>
		    <span class="psw"><a href="#" class="backtosignin">Back To Signin</a></span>
		  </div>
		</form>
	</div>
	<div id="register-session">
	<h2>Register Form</h2>
		<form action="/action_page.php" >
		  <div class="imgcontainer">
		    <img src="<cms:link>/system/modules/com.myjourney/resources/images/w3images/img_avatar2.png</cms:link>" alt="Avatar" class="avatar">
		  </div>
		
		  <div class="container">
		  	<label for="uname"><b>First Name</b></label>
		    <input type="text" placeholder="Enter First Name" name="firstName" required>
		    
		    <label for="uname"><b>Last Name</b></label>
		    <input type="text" placeholder="Enter Last Name" name="lastName" required>
		    
		    <label for="uname"><b>email</b></label>
		    <input type="text" placeholder="Enter email" name="email" required>
		
		    <label for="psw"><b>Password</b></label>
		    <input type="password" placeholder="Enter Password" name="psw" required>
		        
		    <button type="submit">Register</button>
		    <a href="#" class="backtosignin" >Back To Signin</a>
		   <!--  <label>
		      <input type="checkbox" checked="checked" name="remember"> Remember me
		    </label> -->
		  </div>
		
		  <div class="container" style="background-color:#f1f1f1">
		    <a href="<cms:link>/index.html</cms:link>"><button type="button" class="cancelbtn">Cancel</button></a>
		    <span class="psw"> <a href="#" class="forgot">Forgot password?</a></span>
	  	   </div>
		</form>	
	</div>
</div>
</body>
</html>
