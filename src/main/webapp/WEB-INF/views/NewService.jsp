<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="com.grownited.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>address</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<!--  main contain  -->
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Service</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="container-fluid py-4">
<div class="row">
<div class="col-8">
<div class="card mb-4">
<div class="card-header pb-0">

</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">

              <div class="card mb-4">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Add New Service</h5>
                   
                  </div>







<body>


<%
	List<UserBean> listUser = (List<UserBean>) request.getAttribute("listUser");
%>
<%
	List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
%>
<%
	List<SubCategoryBean> listsubCategory = (List<SubCategoryBean>) request.getAttribute("listSubCategory");
%>
<form  action="saveservice" method="post">
  <div class="col-12">
                      <label for="yourPassword" class="form-label">Name</label><br>
                      <input type="text" name="name" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Service</div><br><br>
                      

  <div class="col-12">
                      <label for="yourPassword" class="form-label">Description</label><br>
                      <input type="text" name="description" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Qty</div><br><br>
                      


 Category:<select name ="CategoryId">
 
<%
	for(CategoryBean cb : list) {
		
	
%>		
      <option value = "<%=cb.getCategoryId()%>">
      <%=cb.getCategoryName()%>  </option>
      <%
	}
      %>
         </select><br><br>
         
         
         
       SubCategory:  <select name ="subCategoryId">
         <%
	for(SubCategoryBean sb : listsubCategory) {
		
	
%>		
      <option value = "<%=sb.getSubCategoryId()%>">
      <%=sb.getSubCategoryName()%>  </option>
      <%
	}
      %>
         </select><br><br>
           <div class="col-12">
                      <label for="yourPassword" class="form-label">Qty</label><br>
                      <input type="text" name="qty" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Qty</div><br><br>
                      
         

  <div class="col-12">
                      <label for="yourPassword" class="form-label">Price</label><br>
                      <input type="text" name="price" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Qty</div><br><br>
                      
  <div class="col-12">
                      <label for="yourPassword" class="form-label">TopSellinglnd:</label><br>
                      <input type="text" name="topSellinglnd" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Qty</div><br><br>
  <div class="col-12">
                      <label for="yourPassword" class="form-label">MostValueind:</label><br>
                      <input type="text" name="mostValuelnd" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Qty</div><br><br>
                      
                      
                       <div class="col-12">
                      <label for="yourPassword" class="form-label">BrandName:</label><br>
                      <input type="text" name="brandName" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Qty</div><br><br>
  <div class="col-12">
                      <label for="yourPassword" class="form-label">ServiceDetailDescriptionURL::</label><br>
                      <input type="text" name="serviceDetailDescriptionURL" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Qty</div><br><br>
 


ServiceDetailDescriptionURL:<input type="text" name="serviceDetailDescriptionURL"><br><br>

User:<select name ="UserId">
       <%
	for(UserBean ub : listUser) {
		
	
%>		
      <option value = "<%=ub.getUserId()%>">
      <%=ub.getFirstName()%>  </option>
      <%
	}
      %>
         </select><br><br>

		<br><br>

 <div class="col-8">
                      <button class="btn btn-primary w-100" type="submit" name="saveService" value="SaveService">Save Service</button>
                    </div>
                    </div>
                    
</form> <br><br>
</div>
</div>
</div></div>
</div>
</div>
</div>







</body>
</html>