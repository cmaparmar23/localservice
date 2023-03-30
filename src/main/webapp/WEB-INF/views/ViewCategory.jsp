<%@page import="com.grownited.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>View Category</title>


</head>
<body>
<!--  main contain  -->
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    


<h2> View Category</h2>
<%
CategoryBean categoryBean  =  (CategoryBean)request.getAttribute("categoryBean");
%>







CategoryId : <%=categoryBean.getCategoryId() %><br><br><br>
CategoryName : <%=categoryBean.getCategoryName() %><br><br><br>
Deleted: <%=categoryBean.getDeleted() %><br><br><br>
</main>

</body>
</html>