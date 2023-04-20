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
          <li class="breadcrumb-item active">Category</li>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add New Category</h5>
                   
                  </div>







   
                  <form class="row g-3 needs-validation" novalidate action="savecategory" method="post">

                   

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Category</label>
                      <input type="text" name="categoryName" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Add New Category</div>
                    </div>

                   
                  
								<div class="col-3"></div>
								<div class="col-3">
									<a href="newcategory"><button class="btn btn-primary w-100" type="submit">Save Category
										</button></a>

								</div>
								<div class="col-2">
									<a class="btn btn-danger w-100" href="listcategories" type="button">Cancel</a>

								</div>

							</div>
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