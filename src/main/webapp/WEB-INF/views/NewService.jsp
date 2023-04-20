

<%@page import="com.grownited.bean.SubCategoryBean"%>
<%@page import="com.grownited.bean.CategoryBean"%>
<%@page import="com.grownited.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Service</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<!--  main contain  -->
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Service</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    
 <div class="container-fluid py-8">
<div class="row">
<div class="col-8">
<div class="card mb-4">
<div class="card-body px-0 pt-0 pb-2">
<div class="table-responsive p-0">

              <div class="card mb-4">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Add New Service</h5>
                   
                  </div>

<body>


<%
	List<UserBean> listUser = (List<UserBean>) request.getAttribute("listUser");
%>
<%
	List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
%>
<%
	List<SubCategoryBean> listsubCategory = (List<SubCategoryBean>) request.getAttribute("listSubCategory");
%>

<form class="row g-3"  action="saveservice" method="post">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label"> Name</label>
                  <input type="text" class="form-control" id="inputNanme4" name="name">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">Description </label>
                  <input type="text" class="form-control" id="inputNanme4" name="description">
                </div>
                
                
            <div class="col-md-12">
                  <label for="inputState" class="form-label">Category</label>
          
                  <select id="inputState" class="form-select" name ="CategoryId">
                  <option selected="">Choose...</option>
                  <%
						for(CategoryBean cb : list) {
					%>	
                    
                    <option value = "<%=cb.getCategoryId()%>">
      				<%=cb.getCategoryName()%>  </option>
       							<%
													}
      								%>
                  </select>
                </div>
                
                 <div class="col-md-12">
                  <label for="inputState" class="form-label"> SubCategory</label>
          
                  <select id="inputState" class="form-select" name ="subCategoryId">
                  <option selected="">Choose...</option>
       			  <%
						for(SubCategoryBean sb : listsubCategory) {
				%>		
     				<option value = "<%=sb.getSubCategoryId()%>">
     				 <%=sb.getSubCategoryName()%>  </option>
      			<%
					}
      			%>
                  
                  </select>
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label"> QTY</label>
                  <input type="text" class="form-control" id="inputNanme4"  name="qty">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label"> Price</label>
                  <input type="text" class="form-control" id="inputNanme4" name="price">
                </div>
                
              
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label"> MostValuelnd</label>
                  <input type="text" class="form-control" id="inputNanme4" name="mostValuelnd">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label"> BrandName</label>
                  <input type="text" class="form-control" id="inputNanme4" name="brandName">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label"> ServiceDetailDescriptionURL</label>
                  <input type="text" class="form-control" id="inputNanme4" name="serviceDetailDescriptionURL">
                </div>
                
                  <div class="form-check">
                      <label class="form-check-label" for="gridCheck1">TopSellinglnd 
                      </label>
                      <input class="form-check-input" type="checkbox" id="gridCheck1" name="topSellinglnd">
                       
                    </div>
                    
                 
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
              </form>
 <br><br>
</div>
</div>
</div></div>
</div>
</div>
</div>
</body>
</html>
