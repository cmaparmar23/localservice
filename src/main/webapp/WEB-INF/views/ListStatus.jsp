<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>localservice  | List Status</title>
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
          <li class="breadcrumb-item active">Status</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

   <%

   List<StatusBean>listStatus = (List<StatusBean>)request.getAttribute("listStatus");





%>


<div class="container-fluid py-4">
<div class="row">
<div class="col-12">
<div class="card mb-4">
<div class="card-header pb-0">
<h6>Status</h6>
</div>
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">
<table class="table align-items-center mb-0">
<thead>
<tr>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">StatusId</th>
<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center">Status</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Deleted?</th>
<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
<th class="text-secondary opacity-7"></th>
</tr>
</thead>
<tbody>
<%
for(StatusBean sb:listStatus){
	
%>

	
<tr>
        <td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=sb.getStatusId()%></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 text-center"><%=sb.getStatusName() %></td>
		
		
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"><%=sb.isDeleted() %></td>
		<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center"
	
	><a href="deletecategory/<%=sb.getStatusId() %>">Delete</a>|
	
		<a href="viewstatus/<%=sb.getStatusId() %>">View</a></td>

</tr>
		
	
	

</tr>
<%} %>

</tbody>

</table><br>
<center>
 <div class="col-"><a href="newstatus">
                      <button class="btn btn-primary w-50" type="submit" name="saveStatus" value="SaveStatus">Add New Status</button>
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