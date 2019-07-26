<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
</head>
<body>
<%@ include file="header.html"%>
<a href="admin.jsp" style="position:absolute;left:15%;top:38%;">Back</a>
<div style="position:absolute;top:50%;left:35%;border: 1px solid;background-color:pink;padding: 10px;">
<%
String s=request.getParameter("msg");
if(s!=null)
	out.println(s);
%>

<form action="add_cat_db.jsp" method="post">
<h1>Add Category</h1>
<table>
<tr>
<td>
<label>Category Name:</label>
</td>
<td>
<input type="text" placeholder="Enter name" name="cat_name">
</td>
</tr>
<tr>
<td>
<input type="submit" value="Submit">
</td>
</tr>
</table>
</form>
</div>
</body>
</html>