<%@page import="com.grownited.bean.OrderBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Order</title>
</head>
<body>
<h2> View Order</h2>
<%
OrderBean orderBean  =  (OrderBean)request.getAttribute("orderBean");
%>
OrderId : <%=orderBean.getStatusId() %><br><br><br>

</body>
</html>