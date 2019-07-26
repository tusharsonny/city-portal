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
	String u=request.getParameter("user");
	String p=request.getParameter("pass");
	String e=request.getParameter("email");
	String m=request.getParameter("mobile");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into users values(?,?,?,?)");
	pst.setString(1,u);
	pst.setString(2,p);
	pst.setString(3,e);
	pst.setString(4,m);
	pst.executeUpdate();
	
	response.sendRedirect("newuser.jsp?msg=Registration Done");
}
catch(Exception e)
{
	response.sendRedirect("newuser.jsp?msg="+e.getMessage());
}
%>
</body>
</html>