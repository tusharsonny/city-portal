<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.new{background-color:white;color:blue;font-size:25px;font-style:Arial;}
</style>
</head>
<body>
<%@ include file="header.html"%>
<div align="left">
<h1 class="new">You are a New User..</h1>

<h2 class="new">Please go for Registration</h2>
</div>

<div style="position:absolute;top:37%;left:40%;border: 1px solid;background-color:pink;">
<form action="regdb.jsp" method="post">
<table cellpadding="7">
<tr>
<td><label>Username:</label></td>
<td><input type="text" name="user" placeholder="Username" required="required"></td>
</tr>
<tr>
<td><label>Password:</label></td>
<td><input type="password" name="pass" required="required"></td>
</tr>

<tr>
<td><label>Email:</label></td>
<td><input type="email" name="email" required="required"></td>
</tr>

<tr>
<td><label>Mobile:</label></td>
<td><input type="number" name="mobile" required="required"></td>
</tr>

<tr>
<td><input type="submit" value="register"></td>
<td><input type="reset" value="reset"></td>
</tr>
</table>
</form>
</div>
<div style="position:absolute;left:45%";color:red;>
<%
String s=request.getParameter("msg");
if(s!=null)
	out.println(s);
%>
</div>
</body>
</html>