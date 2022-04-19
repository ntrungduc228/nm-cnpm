<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Send mail </title>
</head>
<body>
	${message }
	<form action="mailer/send.htm" method="post">
		<p> <input name="from" placeholder="from" /> </p>
		<p> <input name="to" placeholder="to" /> </p>
		<p> <input name="subject" placeholder="subject" /> </p>
		<p> <textarea name="body" placeholder="body" rows="3" cols="30"></textarea> </p>
		<button type="submit">Send</button>
	</form>
	
	<img src="<c:url value='resources/img/doctor1.jpg' var="ok"/>" />
	${ok }: okok
	<img src="resources/img/doctor1.jpg" />
</body>
</html>