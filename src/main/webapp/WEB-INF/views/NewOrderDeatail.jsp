<%@page import="com.grownited.bean.StatusBean"%>
<%@page import="com.grownited.bean.OrderBean"%>
<%@page import="com.grownited.bean.ServiceBean"%>
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
          <li class="breadcrumb-item active">OrderDeatail</li>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add New OrderDeatail</h5>
                   
                  </div>








</head>
<body>
<%
	List<OrderBean> listOrder = (List<OrderBean>) request.getAttribute("listOrder");
%>
<%
	List<UserBean> listUser = (List<UserBean>) request.getAttribute("listUser");
%>
<%
	List<ServiceBean> listService = (List<ServiceBean>) request.getAttribute("listService");
%>

<%
	List<StatusBean> listStatus = (List<StatusBean>) request.getAttribute("listStatus");
%>

<form action="saveorderdeatail" method="post">
Order:<select name ="OrderId">
       <%
	for(OrderBean ob : listOrder) {
		
	
%>		
      <option value = "<%=ob.getOrderId()%>">
      <%=ob.getOrderDate()%>  </option>
      <%
	}
      %>
         </select><br><br>
         
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
         
         
         
         
     Service:<select name ="ServiceId">
       <%
	for(ServiceBean sb : listService) {
		
	
%>		
      <option value = "<%=sb.getServiceId()%>">
      <%=sb.getName()%>  </option>
      <%
	}
      %>
         </select><br><br>
         <div class="col-12">
                      <label for="yourPassword" class="form-label">Qty</label><br>
                      <input type="text" name="qty" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New OrderDeatail</div></div><br><br>
         

<div class="col-12">
                      <label for="yourPassword" class="form-label">Price</label><br>
                      <input type="text" name="price" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Address</div></div><br><br>



  Status:<select name ="StatusId">
       <%
	for(StatusBean stb : listStatus) {
		
	
%>		
      <option value = "<%=stb.getStatusId()%>">
      <%=stb.getStatusName()%>  </option>
      <%
	}
      %>
         </select><br><br>

<div class="col-5">
                      <button class="btn btn-primary w-100" type="submit" name="saveOrderDeatail" value="SaveService">Save OrderDeatail</button>
                    </div>
                    </div>
        



<br><br>

</form>
</body>
</html>
