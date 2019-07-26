<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.forgot{background-color:white;color:blue;font-style:Arial;font-size:30px;}
</style>
</head>
<body>
<%@ include file="header.html"%>
<div align="left">
<h1 class="forgot">Reset Your Password....</h1>
</div>
<div style="position:absolute;top:40%;left:50%;border:1px solid;background-color:pink;">
<form action="recoverpass.jsp" method="post">
<table cellpadding="7">
<tr>
<td><label>User-Name:</label></td>
<td><input type="text" name="user" placeholder="Username" required="required"></td>
</tr>

<tr>
<td><label>Email-Id:</label></td>
<td><input type="email" name="email" required="required"></td>
</tr>


<tr>
<td><input type="submit" value="recover"></td>
<td><input type="reset" value="reset"></td>
</tr>
</table>
</form>
</div>
<%
String s=request.getParameter("msg");
if(s!=null)
	out.println(s);
%>

</body>
</html>