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
<div style="position:absolute;top:40%;left:35%;border: 1px solid;background-color:pink;padding: 10px;">
<%
String s=request.getParameter("msg");
if(s!=null)
	out.println(s);
%>

<form action="modfy_info_db.jsp" method="post">
<h1>Modify Information</h1>
<table>
<tr>
<th>
<label>Category</label>
</th>
<th>
<label>Address</label>
</th>
<th>
<label>Contact</label>
</th>
<th>
<label>Action</label>
</th>

	<% 
try
{

	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from information");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><a href="modify2.jsp?cn=<%=rs.getString(1)%>&adr=<%=rs.getString(2)%>&ct=<%=rs.getString(3)%>">Modify</a></td>
		
		</tr>
		<%
		
	}
	con.close();
}
catch(Exception e)
{
		
}
%>
</table>
</form>
</div>
</body>
</html>