<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="showcart.jsp">SHOW CART</a>
<br>
<%@ include file="db.jsp" %>
<%
String qr="select * from work";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
while(rs.next())
{
	String name=rs.getString("Name");
	String cmp=rs.getString("Company");
	String cat=rs.getString("Category");
	int price=rs.getInt("Price");
%>
<a href="show.jsp?Name=<%=name %>&Price=<%=price %>&Category=<%=cat %>&Company=<%=cmp %>">
<%=name %></a>
<%} %>

</body>
</html>