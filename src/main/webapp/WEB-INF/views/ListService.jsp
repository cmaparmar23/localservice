<%@page import="com.grownited.bean.ServiceBean"%>
<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | List Service</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>Service</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Service</li>
				<li class="breadcrumb-item active">List</li>
			</ol>
		</nav>
	</div>


	<%
		List<ServiceBean> listService = (List<ServiceBean>) request.getAttribute("listService");
	%>


	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							List Service <a href="newservice"><i
								class="bi bi-plus-circle-fill"></i></a>

						</h5>


						<!-- Table with stripped rows -->

						<table class="table datatable">
							<thead>
								<tr>
									<th>Name</th>
									<th>CategoryName</th>
									<th>SubCategoryName</th>
									<th>Qty</th>
									<th>Brand</th>
									<th>Price</th>

									<th>Action</th>

								</tr>
							</thead>
							<tbody>
								<%
									for (ServiceBean sb : listService) {
								%>
								<tr>
									<td><%=sb.getName()%></td>
									<td><%=sb.getCategoryId()%>
									<td><%=sb.getSubCategoryId() %>
									<td><%=sb.getQty()%>
									<td><%=sb.getBrandName()%>
									<td><%=sb.getPrice()%>
									<td><a class="text-danger"
										href="deleteService/serviceId=<%=sb.getServiceId()%>"><i
											class="bi bi-trash"></i> </a> | <a class="text-warning"
										href="uploadimage?ServiceId=<%=sb.getServiceId()%>"><i
											class="bi bi-upload"></i> </a></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>


					</div>
				</div>

			</div>
		</div>
	</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>


</body>
</html>
