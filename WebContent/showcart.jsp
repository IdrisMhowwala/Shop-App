<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="db.jsp" %>

<%
String qr="select * from cart";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
while(rs.next())
{
	out.println(rs.getString("Name"));
	out.println(rs.getInt("Price"));
	out.println(rs.getString("Category"));
	out.println(rs.getString("Company"));
%><br><% }
%>
<a href="clearcart.jsp">PaY NOW</a>
</body>
</html>