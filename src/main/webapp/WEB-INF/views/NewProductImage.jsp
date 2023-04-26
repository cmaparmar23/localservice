<%@page import="com.grownited.bean.ServiceBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>localservice | New Category</title>




<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>Product Image</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Product Image</li>
				<li class="breadcrumb-item active">New</li>
			</ol>
		</nav>
	</div>


                  
   <section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">New Product Image</h5>

						<%
							List<ServiceBean> list = (List<ServiceBean>) request.getAttribute("service");
						%>


             <form class="row g-3 needs-validation" novalidate action="saveproductimage" method="post">

                   

                    <div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">ImageURL
								</label>
								<div class="col-sm-6">
									<input type="text" name="imageUrl" class="form-control"
									value="assets/users/products/">
								</div>
							</div>
							<div class="row mb-3">
								<label class="col-sm-2 col-form-label">Service</label>
								<div class="col-sm-6">
									<select name="serviceId" id="serviceId" class="form-select"
										aria-label="Default select example">
										<option selected="-1">Select Service</option>
										<%
											for (ServiceBean sb : list) {
										%>
										<option value="<%=sb.getServiceId()%>">
											<%=sb.getName()%>: <%=sb.getServiceId()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col-2"></div>
								<div class="col-2">
									<button class="btn btn-primary w-100" type="submit">Save
										Image</button>

								</div>
								<div class="col-2">
									<a class="btn btn-danger w-100" href="listproductimage"
										type="button">Cancel</a>

								</div>

							</div>
							</form>
							
						<!-- Table with stripped rows -->

						<br> <a href="listproductimage"> <i
							class="bi bi-arrow-left"></i> BACK
						</a>

                                    
							
    
					</div>
				</div>

			</div>
		</div>
	</section>
	</main>
    </main>
    
   
    
   
    





</body>
</html>