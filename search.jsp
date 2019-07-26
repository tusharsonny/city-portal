<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,mypackage.*"%>



<a href="index.jsp">Back</a>
<table bgcolor="cyan" align="center">
<tr>
<td>
<table>
<th width="120px">CategoryName</th><th width="120px">Address</th><th width="120px">Contact</th>
<% 
String categoryName=request.getParameter("cat_name");

Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from information where cat_name='"+categoryName+"'");
while(rs.next())
{
%>
<tr>
<td align="center"><%=rs.getString(1)%></td><td align="center"><%=rs.getString(2)%></td><td align="center"><%=rs.getString(3)%></td>
</tr>
<%
}
con.close();
%>
</table>
</td>
</tr>
</table>
