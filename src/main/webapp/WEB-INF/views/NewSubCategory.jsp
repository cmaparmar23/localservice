<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.CategoryBean"%>
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
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<!--  main contain  -->
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">SubCategory</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <main>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add New SubCategory</h5>
                   
                  </div>







    <%
	List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
%>

<form action="savesubcategory" method="post">
<div class="col-12">
                      <label for="yourPassword" class="form-label">SubCategory</label>
                      <input  name="subCategoryName" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New SubCategory</div>
                    </div>




<br><br>

 <div class="col-15">
                      <label for="yourPassword" class="form-label">Category</label>
                      <inpu><select name ="CategoryId">
                      

<%
	for(CategoryBean cb : list) {
		
	
%>		
      <option value = "<%=cb.getCategoryId()%>">
      <%=cb.getCategoryName()%>  </option>
      <%
	}
      %>
         </select><br><br>
           <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Save SubCategory</button>
                    </div>
                    </div>
                    </input>
    </form>
         
         
         
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</main>

</body>
</html>