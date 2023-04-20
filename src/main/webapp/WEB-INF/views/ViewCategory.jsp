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
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">

	
	<div class="pagetitle">
		<h1>Category</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Category</li>
				<li class="breadcrumb-item active">Edit</li>
			</ol>
		</nav>
	</div>



	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Edit Category</h5>



<h2> View Category</h2>
<%
CategoryBean categoryBean  =  (CategoryBean)request.getAttribute("categoryBean");
%>







CategoryId : <%=categoryBean.getCategoryId() %><br><br><br>
CategoryName : <%=categoryBean.getCategoryName() %><br><br><br>
Deleted: <%=categoryBean.getDeleted() %><br><br><br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div></div>
</div>

</main>


</body>
</html>