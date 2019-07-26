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
	String cat_name=request.getParameter("cat_name");
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into category values(?)");
	pst.setString(1,cat_name.toUpperCase());
	pst.executeUpdate();
	response.sendRedirect("addcategory.jsp?msg=Category Added");
	con.close();
}
catch(Exception e)
{
	response.sendRedirect("addcategory.jsp?msg="+e.getMessage());
	
}
%>
</body>
</html>