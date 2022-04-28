<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet"/>
<link href="<c:url value='resources/css/style.css'/>" rel="stylesheet">
<style>
	.form-group {
		margin: 10px;
	}
</style>
</head>
<body>
	<span class="text-red" >index page</span>
	
	<button onClick="alertMe()" class="btn">click me</button>
	
	<form>
			<div class="form-group">
				<div>Username</div>
				<input name="username" value="${user.username }" />
			</div>
			<div class="form-group">
				<div>Password</div>
				<input name="password" value="${user.password }" />
			</div>
			<div class="form-group">
				<button>Login</button>
			</div>
		</form>
		
	
	
	<script src="<c:url value="resources/js/main.js"/>"></script>
</body>
</html>