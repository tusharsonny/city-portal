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

<form action="add_info_db.jsp" method="post">
<h1>Add Information</h1>
<table>
<tr>
<td>
<label>Category:</label>
</td>
<td>
<select name="cat_name">
<option>---Select---</option>
<%@ page  import="java.sql.*,mypackage.*"%>
<%
Connection con=ConnectionProvider.getCon();
PreparedStatement pst=con.prepareStatement("select * from category");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	%>
	
        <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>	
	
	<% 
}
%>
</select>
</td>
</tr>
<tr>
<td>
<label>Address:</label>
</td>
<td>
<input type="text" placeholder="Enter Address" name="adr" value="">
</td>
</tr>
<tr>
<td>
<label>Contract No.:</label>
</td>
<td>
<input type="number" placeholder="Enter ph. number" name="contact" value="">
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