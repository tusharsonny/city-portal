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
	PreparedStatement pst=con.prepareStatement("insert into information values(?,?,?)");
	pst.setString(1,cn);
	pst.setString(2,ad);
	pst.setString(3,ct);
	pst.executeUpdate();
	
	response.sendRedirect("Addinfo_user.jsp?msg=Information Added");
	con.close();
}
catch(Exception e)
{
	response.sendRedirect("Addinfo_user.jsp?msg="+e.getMessage());
	
}
%>
</body>
</html>