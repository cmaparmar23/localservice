<%@page import="com.grownited.bean.OrderDeatailBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Deatail</title>
</head>
<h2>OrderDetail_Lits</h2>
<body>
<%
OrderDeatailBean orderdeatailBean  =  (OrderDeatailBean)request.getAttribute("orderdeatailBean");
%>

orderdeatailId:<%=orderdeatailBean.getOrderDetailId()%><br><br>
orderId:<%=orderdeatailBean.getOrderId() %><br>
userId:<%=orderdeatailBean.getUserId() %><br>
productId:<%= orderdeatailBean.getProductId()%><br>
q:<%=orderdeatailBean.getQty() %><br>
Price<%=orderdeatailBean.getPrice()%><br>
Status:<%=orderdeatailBean.getStatus() %><br>

Deleted:<%=orderdeatailBean.isDeleted()%><br>






</body>
</html>