<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> localservice | List SubCategory </title>
</head>
<body>



<%
List<SubCategoryBean> listSubCategory =(List<SubCategoryBean>) request.getAttribute("listSubCategory");


%>
<table border="1">
<tr>
<th>SubCategoryId</th>
<th>CategoryId</th>
<th>SubCategoryName</th>
<th>CategoryName</th>
<th>Deleted</th>
</tr>





<%for(SubCategoryBean sb:listSubCategory) { %>

<tr>
<td><%=sb.getSubCategoryId() %></td>
<td><%=sb.getCategoryId()%></td>
<td><%=sb.getSubCategoryName()%></td>
<td><%=sb.getCategoryName() %></td>
<td><%=sb.isDeleted() %></td>
</tr>
<% } %>


</table>

</body>
</html>