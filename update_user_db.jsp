<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page  import="java.sql.*,mypackage.*"%>
<% 
try
{
	String u=request.getParameter("username");
	String p=request.getParameter("password");
	String e=request.getParameter("email");
	String c=request.getParameter("contact");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("update users set password=?,email=?,mobile=? where username=?");
	pst.setString(1,p);
	pst.setString(2,e);
	pst.setString(3,c);
	pst.setString(4,u);
	
	pst.executeUpdate();
	
	response.sendRedirect("update_profile_user.jsp?msg=Information Updated");
	con.close();
}
catch(Exception e)
{
	response.sendRedirect("update_profile_user.jsp?msg="+e.getMessage());
	
}
%>
</body>
</html>