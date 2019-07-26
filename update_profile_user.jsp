<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.html" %>
<%@ page  import="java.sql.*,mypackage.*"%>
<div style="position:absolute;top:50%;left:35%;border: 1px solid;background-color:pink;padding: 10px;">
<%
String s=request.getParameter("msg");
if(s!=null)
	out.println(s);
%>
<form action="update_user_db.jsp" method="post">
<h1>Update Profile</h1>
<table>
<%@ page  import="java.sql.*,mypackage.*"%>
<%
try{
Connection con= ConnectionProvider.getCon();
PreparedStatement pst=con.prepareStatement("select * from users where username=?");
pst.setString(1,session.getAttribute("user").toString());
ResultSet rs=pst.executeQuery();
rs.next();
}
catch(Exception e){
	
}
%>
<tr>
<td>
<label>Name:</label>
</td>
<td>
<input type="text"  name="username" value="<%= rs.getString(1) %>" readonly="readonly">
</td>
</tr>


<tr>
<td>
<label>Password:</label>
</td>
<td>
<input type="text"  name="password" value="<%=rs.getString(2) %>">
</td>
</tr>


<tr>
<td>
<label>Email:</label>
</td>
<td>
<input type="text"  name="email" value="<%=rs.getString(3) %>">
</td>
</tr>

<tr>
<td>
<label>Contact:</label>
</td>
<td>
<input type="number" placeholder="Enter ph. number" name="contact" value="<%=rs.getString(4) %>">
</td>
</tr>


<tr>
<td>
<input type="submit" value="update">
</td>
</tr>
</table>
</form>
</div>
</body>
</html>