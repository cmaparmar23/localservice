<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>localservice  | List Address</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>


<jsp:include page="AdminSideBar.jsp"></jsp:include>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<!--  main contain  -->
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Address</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  
   <%

	
   List<AddressBean>listAddress = (List<AddressBean>)request.getAttribute("listAddress");

%>

  

<div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>Address</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">AddressId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">UserId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">AddressLine</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">LandMark</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">Pincode</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">City</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">State</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Deleted?</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
<th class="text-secondary opacity-7"></th>
</tr>
</thead>
<tbody>
<%
	for(AddressBean ab:listAddress){
%>

	
<tr>
        <td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ab.getAddressId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center"><%=ab.getUserId() %></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ab.getAddressLine()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ab.getLandMark()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ab.getPincode()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ab.getCity()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ab.getState()%></td>
		
		
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ab.isDeleted() %></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"
	
	><a href="deletecategory/<%=ab.getAddressId() %>">Delete</a>|
	
		<a href="viewaddress/<%=ab.getAddressId() %>">View</a></td>

</tr>
<%} %>

</tbody>

</table><br>
<center>
 <div class="col-"><a href="newaddress">
                      <button class="btn btn-primary w-50" type="submit" name="saveService" value="SaveService">Add New Address</button>
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



  <jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>


