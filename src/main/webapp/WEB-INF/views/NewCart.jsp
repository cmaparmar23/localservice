<%@page import="com.grownited.bean.ServiceBean"%>
<%@page import="com.grownited.bean.UserBean"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>

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
          <li class="breadcrumb-item active">Cart</li>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add New Cart</h5>
                   
                  </div>







   <%
	List<UserBean> listUser = (List<UserBean>) request.getAttribute("listUser");
%>
<%
	List<ServiceBean> listService = (List<ServiceBean>) request.getAttribute("listService");
%>
<form action="savecart" method="post">
     User:<select name ="UserId">

                      

       <%
	for(UserBean ub : listUser) {
		
	
%>	 <br><br>	
      <option value = "<%=ub.getUserId()%>">
      <%=ub.getFirstName()%>  </option>
      <%
	}
      %>
         </select><br><br>
         </input>
         
         
         
         
         
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
                      <div class="invalid-feedback">Add New Qty</div><br><br>
                      
                      
                       <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" name="saveCart" value="Savecart">Save Cart</button>
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