<%@page import="mypackage.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page  import="java.sql.*,mypackage.*"%>

<% 
try
{
	String u=request.getParameter("user");
	String p=request.getParameter("pass");
	Connection con= ConnectionProvider.getCon();
        PreparedStatement pst=con.prepareStatement("select * from users where username=? and password=?");
	pst.setString(1,u);
	pst.setString(2,p);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("welcome.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp?msg=Invalid username/password");
	}
}
catch(Exception e)
{
	response.sendRedirect("index.jsp?msg="+e.getMessage());
}
%>
</body>
</html>