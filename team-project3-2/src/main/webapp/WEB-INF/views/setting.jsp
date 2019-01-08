<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  
 <head>
    <meta charset="utf-8">
    <title>Signup - Bootstrap Admin Template</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet" type="text/css">
<link href="/team-project3/resources/assets/css/pages/signin.css" rel="stylesheet" type="text/css">
<style type="text/css">
		.error { color: red; }
</style>
</head>

<body>
	
	<!-- navbar.jsp -->
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="#00ba8b" name="bgcolor" />
	</jsp:include>
	<!-- navbar.jsp -->
<div class="account-container register">
	
	<div class="content clearfix">
		
		<form action="#" method="post">
		
			<h1>Signup for Free Account</h1>			
			
			<div class="login-fields">
				
				<p>Create your free account:</p>
				
				<div class="field">
					<label for="firstname">First Name:</label>
					<input type="text" id="firstname" name="firstname" value="" placeholder="First Name" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="lastname">Last Name:</label>	
					<input type="text" id="lastname" name="lastname" value="" placeholder="Last Name" class="login" />
				</div> <!-- /field -->
				
				
				<div class="field">
					<label for="email">Email Address:</label>
					<input type="text" id="email" name="email" value="" placeholder="Email" class="login"/>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="password" name="password" value="" placeholder="Password" class="login"/>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="confirm_password">Confirm Password:</label>
					<input type="password" id="confirm_password" name="confirm_password" value="" placeholder="Confirm Password" class="login"/>
				</div> <!-- /field -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Agree with the Terms & Conditions.</label>
				</span>
									
				<button class="button btn btn-primary btn-large">Register</button>
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->
<%-- <div class="account-container register">
	
	<div class="content clearfix">
		
		<form:form action="#" method="post">
		
			<h1>Signup for Free Account</h1>			
			
			<div class="login-fields">
				
				<p>Create your free account:</p>
				
				<div class="field">
					<label for="cenId">ID:</label>	
					<form:input type="text" id="cenId" path="cenId" placeholder="jooho@example.com" class="login" />
					<form:errors path="cenId" cssClass="error" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="cenPhone">Phone Number:</label>
					<form:input type="text" id="cenPhone" path="cenPhone" placeholder="Phone Number" class="login"/>
					<form:errors path="cenPhone" cssClass="error" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="cenPhone">Password:</label>
					<form:input type="password" id="cenPasswd" path="cenPasswd" placeholder="Password" class="login"/>
					<form:errors path="cenPasswd" cssClass="error" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="confirm_password">Confirm Password:</label>
					<input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password" class="login"/>
				</div> <!-- /field -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Agree with the Terms & Conditions.</label>
				</span>
									
				<button class="button btn btn-primary btn-large">Register</button>
				
			</div> <!-- .actions -->
			
		</form:form>
		
	</div> <!-- /content -->
	
</div> --%> <!-- /account-container -->

<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>

<script src="/team-project3/resources/assets/js/signin.js"></script>

</body>

 </html>

