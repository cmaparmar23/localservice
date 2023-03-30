<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>localservice  | List Subcategory</title>
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

   <%

	List<SubCategoryBean> list = (List<SubCategoryBean>)request.getAttribute("listSubCategory");


%>


<div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>Sub Categories</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">SubCategoryId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">CategoryId</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">SubCategoryName</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">CategoryName</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
<th class="text-secondary opacity-7"></th>
</tr>
</thead>
<tbody>
<%
	for(SubCategoryBean sb:list)
	{
%>

	
<tr>
        <td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=sb.getSubCategoryId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center"><%=sb.getCategoryId() %></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=sb.getSubCategoryName()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=sb.getCategoryName()%></td>
		
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=sb.isDeleted() %></td>
		
	
	

</tr>
<%} %>

</tbody>

</table><br>
<center>
 <div class="col-"><a href="newsubcategory">
                      <button class="btn btn-primary w-50" type="submit" name="saveSubCategory" value="SaveService">Add New Sub Category</button>
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