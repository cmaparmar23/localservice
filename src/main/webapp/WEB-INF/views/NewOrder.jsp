<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="com.grownited.bean.AddressBean"%>
<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order</title>
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
          <li class="breadcrumb-item active">Order</li>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add New Order</h5>
                   
                  </div>









<body>

<%
	List<UserBean> listUser = (List<UserBean>) request.getAttribute("listUser");
%>
<%
	List<AddressBean> listAddress = (List<AddressBean>) request.getAttribute("listAddress");
%>
<%
	List<StatusBean> listStatus = (List<StatusBean>) request.getAttribute("listStatus");
%>

<form  action="saveorder" method="post">


user <select name ="UserId">

<%
	for(UserBean ub : listUser) {
		
	
%>		
      <option value = "<%=ub.getUserId()%>">
      <%=ub.getFirstName()%>  </option>
      <%
	}
      %>
         </select><br><br>
         <div class="col-12">
                      <label for="yourPassword" class="form-label">Order Date</label><br>
                      <input type="date" name="orderDate" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Address</div></div><br><br>
                      
         
<div class="col-12">
                      <label for="yourPassword" class="form-label">Total Amount</label><br>
                      <input type="text" name="totalAmount" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Address</div></div><br><br>
                      


address <select name ="AddressId">

<%
	for(AddressBean ab : listAddress) {
		
	
%>		
      <option value = "<%=ab.getAddressId()%>">
      <%=ab.getLandMark()%>  </option>
      <%
	}
      %>
         </select><br><br>


		<br><br>
		Status <select name ="StatusId">

<%
	for(StatusBean sb : listStatus) {
		
	
%>		
      <option value = "<%=sb.getStatusId()%>" >
      <%=sb.getStatusName()%>  </option>
      <%
	}
      %>
         </select><br><br>
		

<div class="col-5">
                      <button class="btn btn-primary w-100" type="submit" name="saveOrder" value="SaveOrder">Save Order</button>
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