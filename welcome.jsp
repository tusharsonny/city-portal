<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.html"%>
<p style="position:absolute;left:2%;top:90%;right:2%;color:blue">
<marquee direction="left">
!!WELCOME TO NEW CITY!!
</marquee>
</p>
<div style="position:absolute;left:35%;top:30%">
<h1>WELCOME<%=session.getAttribute("username") %></h1>
</div>
<a href="Addinfo.jsp" style="position:absolute;left:45%;top:50%;">Add Information</a>
<a href="update_profile_user.jsp" style="position:absolute;left:45%;top:70%;">Update Profile</a>

</body>
</html>