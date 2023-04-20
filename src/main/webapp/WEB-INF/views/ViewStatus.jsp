
<%@page import="com.grownited.bean.StatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Status</title>
</head>
<body>

<h2> View Status</h2>
<%
StatusBean statusBean  =  (StatusBean)request.getAttribute("statusBean");
%>
StatusId : <%=statusBean.getStatusId() %><br><br><br>
StatusName : <%=statusBean.getStatusName() %><br><br><br>
Deleted: <%=statusBean.isDeleted() %><br><br><br>


</body>
</html>