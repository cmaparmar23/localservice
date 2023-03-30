<%@page import="com.grownited.bean.ServiceBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>local service</title>
</head>
<body>
<h2>View Service</h2>

<%
ServiceBean serviceBean  =  (ServiceBean)request.getAttribute("serviceBean");
%>

serviceId:<%=serviceBean.getServiceId() %><br>
userId:<%=serviceBean.getUserId() %><br>
Name:<%=serviceBean.getName() %><br>
Description:<%= serviceBean.getDescription()%><br>
CategoryId:<%=serviceBean.getCategoryId() %><br>
SubCategoryId:<%=serviceBean.getSubCategoryId()%><br>
Qty:<%=serviceBean.getQty() %><br>
Price:<%=serviceBean.getPrice() %><br>
Top Sellinglnd:<%=serviceBean.getTopSellinglnd() %><br>
Most Value lnd:<%=serviceBean.getMostValuelnd() %><br>
Product Detail Description URL:<%=serviceBean.getServiceDetailDescriptionURL() %><br>
Deleted:<%=serviceBean.isDeleted()%><br>





</body>
</html>