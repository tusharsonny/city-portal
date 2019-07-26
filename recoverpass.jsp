<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page  import="java.sql.*,mypack.*"%>
<% 
try
{
	String u=request.getParameter("user");
	String e=request.getParameter("email");
	
	Connection con=ConnectionProvider.getCon();
PreparedStatement pst=con.prepareStatement("select password from users where username=? and email=?");
	pst.setString(1,u);
	pst.setString(2,e);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("forgotpass.jsp?msg=Your Password is:"+rs.getString(1));
	}
	else
	{
		response.sendRedirect("forgotpass.jsp?msg=Invalid username!/email-id!");
	}
}
catch(Exception e)
{
	response.sendRedirect("newuser.jsp?msg="+e.getMessage());
}
%>
</body>
</html>