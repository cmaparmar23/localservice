<%@page import="com.grownited.bean.AddressBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Address</title>
</head>
<body>
<h2> View Address</h2>
<%
AddressBean addressBean  =  (AddressBean)request.getAttribute("addressBean");
%>

AddressId : <%=addressBean.getAddressId() %><br><br><br>
UserId : <%=addressBean.getUserId() %><br><br><br>
Address_line:  <%=addressBean.getAddressLine() %> <br><br><br>
Landmark: <%=addressBean.getLandMark() %><br><br><br>
Pincode:  <%=addressBean.getPincode() %> <br><br><br>
City:  <%=addressBean.getCity() %><br><br><br>
State:  <%=addressBean.getState() %> <br><br><br>
Deleted: <%=addressBean.isDeleted() %><br><br><br>


</body>
</html>