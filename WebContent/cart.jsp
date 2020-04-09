<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("Name");
String cat=request.getParameter("Category");
int price=Integer.parseInt(request.getParameter("Price"));
String cmp=request.getParameter("Company");
%>
<%@ include file="db.jsp" %>
<% String qr="insert into cart values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,name);
ps.setString(3, cat);
ps.setInt(2, price);
ps.setString(4, cmp);
int i=ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.include(request,response);
	out.println("Item added to the Cart");
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.include(request, response);
	out.println("Somethin went Wrong");
}

%>
</body>
</html>