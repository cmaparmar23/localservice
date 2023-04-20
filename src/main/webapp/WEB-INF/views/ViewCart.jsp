
<%@page import="com.grownited.bean.CartBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Cart</title>
</head>
<body>


<h2> View Cart</h2>
<%
CartBean cartBean  =  (CartBean)request.getAttribute("cartBean");
%>
CartId : <%=cartBean.getCartId() %><br><br><br>
UserId : <%=cartBean.getUserId() %><br><br><br>
ServiceId : <%=cartBean.getServiceId() %><br><br><br>
Qty:<%=cartBean.getQty() %><br><br><br>

Deleted: <%=cartBean.isDeleted() %><br><br><br>

</body>
</html>