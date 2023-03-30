<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>localservice  | List category</title>
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
          <li class="breadcrumb-item active">Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

   <%

	List<CategoryBean> list = (List<CategoryBean>)request.getAttribute("list");


%>


<div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>Categories</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">CategoryId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Category</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
<th class="text-secondary opacity-7"></th>
</tr>
</thead>
<tbody>
<%
	for(CategoryBean cb:list){
%>

	
<tr>
        <td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=cb.getCategoryId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center"><%=cb.getCategoryName() %></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=cb.getDeleted() %></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"
	
	><a href="deletecategory/<%=cb.getCategoryId() %>">Delete</a>|
	
		<a href="viewcategory/<%=cb.getCategoryId() %>">View</a></td>

</tr>
<%} %>

</tbody>

</table><br>
<center>
 <div class="col-"><a href="newcategory">
                      <button class="btn btn-primary w-50" type="submit" name="saveCategory" value="SaveService">Add New Category</button>
                      </a>
                    </div>
                    </div>
                    </input>
                    </center>


</div>
</div>
</div>
</div>
</div>

</div>
<div class="ps__rail-x" style="left: 0pdiv class="ps__thumb-x" tabin"lefh: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>



</div>
</div>
</div>

</div>
</main>



  
</body>
</html>

