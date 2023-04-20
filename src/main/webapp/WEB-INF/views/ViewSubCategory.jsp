
<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Sub Category</title>
</head>
<body>
<h2> View Sub Category</h2>
<%
SubCategoryBean subcategoryBean  =  (SubCategoryBean)request.getAttribute("subCategoryBean");
%>

SubCategoryId : <%=subcategoryBean.getSubCategoryId() %><br><br><br>
CategoryId : <%=subcategoryBean.getCategoryId() %><br><br><br>
SubCategoryName : <%=subcategoryBean.getSubCategoryName() %><br><br><br>
CategoryName : <%=subcategoryBean.getCategoryName() %><br><br><br>
Deleted: <%=subcategoryBean.isDeleted() %><br><br><br>







</body>
</html>