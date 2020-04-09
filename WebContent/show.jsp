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
int price=Integer.parseInt(request.getParameter("Price"));
/* if (request.getParameter("Price") != null){
         price=Integer.parseInt(request.getParameter("Price"));
         }else{price=0;}*/
String cat=request.getParameter("Category");
String cmp=request.getParameter("Company");
%>
<form action="cart.jsp">
<input type="hidden" name="Name" value="<%=name %>" />
<input type="hidden" name="Price" value="<%=price %>" />
<input type="hidden" name="Category" value="<%=cat %>" />
<input type="hidden" name="Company" value="<%=cmp %>" />

<table border="2">
<tr>
<td>
<%=name %>
</td>
<td><%=price %></td>
<td><%=cat %></td>
<td><%=cmp %></td>
<td><a href="#">BUY NOW</a></td>
<td><input type="submit" value="ADD TO CART"></td></tr>
</table></form>
</body>
</html>