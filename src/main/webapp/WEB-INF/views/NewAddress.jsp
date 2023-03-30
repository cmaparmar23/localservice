<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.UserBean"%>
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
          <li class="breadcrumb-item active">Address</li>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add New Address</h5>
                   
                  </div>







<body>
<%
	List<UserBean> listUser = (List<UserBean>) request.getAttribute("listUser");
%>


<form  action="saveaddress" method="post">
<div class="col-12">
                      <label for="yourPassword" class="form-label">Address_Line</label><br>
                      <input type="text" name="addressline" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Address</div></div><br><br>
                      
<div class="col-12">
                      <label for="yourPassword" class="form-label">LandMark</label><br>
                      <input type="text" name="landmark" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Service</div></div><br><br>
  <div class="col-12">
                      <label for="yourPassword" class="form-label">PinCode</label><br>
                      <input type="text" name="pincode" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Service</div></div><br><br>
                      
                      

<div class="col-12">
                      <label for="yourPassword" class="form-label">City</label><br>
                      <input type="text" name="city" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Service</div></div><br><br>
                      
<div class="col-12">
                      <label for="yourPassword" class="form-label">State</label><br>
                      <input type="text" name="state" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Service</div></div><br><br>
                      

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
		<div class="col-5">
                      <button class="btn btn-primary w-100" type="submit" name="saveAddress" value="SaveService">Save Address</button>
                    </div>
                    </div>
                    



</form> <br><br>
</div>
</div>
</div></div>
</div>
</div>
</div>







</main>

</body>
</html>