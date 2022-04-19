<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tiêu đề</title>
</head>
<body>
	<p>
		<h3>Thông tin cá nhân</h3>
		<img src="resources/files/${photo_name }" alt="Image"/>
		<br>
		<h3>${param.fullname }</h3>
	 </p>
	 
	 <p> 
	 	<h3>Hồ sơ xin việc</h3>
	 	<ul>
	 		<li> File Name: ${cv_name }</li>
	 		<li> File Type: ${cv_type }</li>
	 		<li> File Size: ${cv_size }</li>
	 	</ul>
	 </p>
</body>
</html>