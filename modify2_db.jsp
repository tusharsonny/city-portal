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
	String cn=request.getParameter("cat_name");
	String ad=request.getParameter("adr");
	String ct=request.getParameter("contact");
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("update information set adr=?,contact=? where cat_name=?");
	pst.setString(1,ad);
	pst.setString(2,ct);
	pst.setString(3,cn);
	pst.executeUpdate();
	
	response.sendRedirect("modify2.jsp?msg=Information Updated");
	con.close();
}
catch(Exception e)
{
	response.sendRedirect("modify2.jsp?msg="+e.getMessage());
	
}
%>
</body>
</html>