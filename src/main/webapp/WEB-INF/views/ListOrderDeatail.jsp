<%@page import="com.grownited.bean.OrderDeatailBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>localservice  | List OrderDeatail</title>
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
          <li class="breadcrumb-item active">OrderDeatail</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  
   <%

	
   List<OrderDeatailBean>listOrderDeatail = (List<OrderDeatailBean>)request.getAttribute("listOrderDeatail");

%>

  

<div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>OrderDeatail</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>

<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">OrderDeatailId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">OrderId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">UserId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">ServiceId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">qty</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">Price</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">StatusId</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Deleted?</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
<th class="text-secondary opacity-7"></th>
</tr>
</thead>
<tbody>
<%
	for(OrderDeatailBean ob:listOrderDeatail){
%>

	
<tr>
        <td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ob.getOrderDeatailId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center"><%=ob.getOrderId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ob.getUserId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ob.getServiceId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ob.getQty()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ob.getPrice()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ob.getStatusId()%></td>
		
		
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=ob.isDeleted() %></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"
	
	><a href="deleteorderdeataill/<%=ob.getOrderDeatailId() %>">Delete</a>|
	
		<a href="vieworderdeatail/<%=ob.getOrderDeatailId()%>">View</a></td>

</tr>
<%} %>

</tbody>

</table><br>
<center>
 <div class="col-"><a href="neworderdeatail">
                      <button class="btn btn-primary w-50" type="submit" name="saveOrderDeatail" value="SaveOrderDeatail">Add New OrderDeatail</button>
                      </a>
                    </div>
                    </div>
                    </input>
                    </center>
                    </from>



</div>
</div>
</div>
</div>
</div>

</div>
<div class="ps__rail-x" style="left: 0pdiv class="ps__thumb-x" tobin"lefh: 0px;"><div class="ps__thumb-y" tobindex="0" style="top: 0px; height: 0px;"></div>



</div>
</div>
</div>

</div>
</main>

  <jsp:include page="AllJs.jsp"></jsp:include>


  
</body>
</html>


