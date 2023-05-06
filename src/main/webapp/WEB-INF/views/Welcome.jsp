
<%@page import="com.grownited.bean.ProductImageBean"%>
<%@page import="java.util.List"%>
<%@page import="com.grownited.bean.ServiceBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/user/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/user/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/user/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/user/style.css">
    <link rel="stylesheet" href="assets/user/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="myaccount"><i class="fa fa-user"></i> My Account</a></li>
                            <li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li>
                            <li><a href="mycart"><i class="fa fa-user"></i> My Cart</a></li>
                            <li><a href="checkoout"><i class="fa fa-user"></i> Checkout</a></li>
                            <li><a href="logout"><i class="fa fa-user"></i> Logout</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                    <li><a href="#">German</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-1">
                    <div class="logo">
                        <h1><a href="./"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                   
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="shop.html">Shop page</a></li>
                        <li><a href="single-product.html">Single product</a></li>
                        <li><a href="mycart">Cart</a></li>
                        <li><a href="myaddress">My Address</a></li>
                        <li><a href="#">Category</a></li>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    <%ServiceBean service = (ServiceBean) request.getAttribute("service") ;
    List<ProductImageBean> productImages =(List<ProductImageBean>) request.getAttribute("productImages");
    %>
   
    
       <div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
					<li>
						<img src="assets/user/products/3/tv2.jpg" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								Tv Installation <span class="primary"> <strong>Wall Stand</strong></span>
							</h2>
							<h4 class="caption subtitle">Base Stand</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>Service now</a>
							
							
						</div>
					</li>
					<li><img src="assets/user/products/7/p1.jpg" alt="Slide">
					
						<div class="caption-group">
							<h2 class="caption title">
								Commerical <span class="primary">Plumbers <strong></strong></span>
							</h2>
							<h4 class="caption subtitle">Qualifed Professional </h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>Service now</a>
						</div>
					</li>
					<li><img src="assets/user/products/8/d1.jpg" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								 <span class="primary">Dentists Specialist <strong></strong></span>
							</h2>
							<h4 class="caption subtitle"></h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>Book Appoinment now</a>
						</div>
					</li>
					<li><img src="assets/user/products/3/f2.jpg" alt="Slide">
						<div class="caption-group">
						  <h2 class="caption title">
								Fan <span class="primary">installation <strong>Good</strong></span>
							</h2>
							<h4 class="caption subtitle"></h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>Service now</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- ./Slider -->
    </div> 
    </div>
    <!-- End slider area -->
    
    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo1">
                        <i class="fa fa-refresh"></i>
                        <p>30 Days return</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p>Free shipping</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p>New products</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    <% 
	List<ServiceBean> latestService = (List<ServiceBean>) request.getAttribute("latestService");
	List<ServiceBean> topSellingService = (List<ServiceBean>) request.getAttribute("topSellingService");

	%>
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Latest Service</h2>
                        <div class="product-carousel">
                        <%
                        for(ServiceBean serviceBean:latestService){
                        %>
                            <div class="single-product">
                            
                                <div class="product-f-image">
                                    <img src="assets/user/products/<%=serviceBean.getServiceId()%>/main.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="addtocart?serviceId<%= serviceBean.getServiceId() %>" class=add-to-cart-link><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="seedetails?serviceId=<%=serviceBean.getServiceId()%>"class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                            <h2>
									<a href="single-product.html"><%=serviceBean.getName()%></a>
								</h2>
                                
                                <div class="product-carousel-price">
									<ins><%=serviceBean.getPrice()%></ins>
									<del><%=serviceBean.getPrice() + (serviceBean.getPrice() * 0.10)%></del>
								</div>
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>

			<br> <bR>
                                                                           
                            <!-- End main content area -->
    
    <div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h2 class="section-title">Top Selling Products</h2>
						<div class="product-carousel">
<%
								for (ServiceBean serviceBean : topSellingService) {
							%>
							
							<div class="single-product">
								<div class="product-f-image">
									<img
										src="assets/users/products/<%=serviceBean.getServiceId() %>/main.jpg"
										alt="">
									<div class="product-hover">
										<a href="addtocart?serviceId<%= serviceBean.getServiceId() %>"
											class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>
											Add to cart</a> 
											<a href="seedetails?serviceId=<%=serviceBean.getServiceId()%>"class="view-details-link"><i class="fa fa-link"></i> See details</a>
											
									</div>
								</div>

								<h2>
									<a href="single-product.html"><%=serviceBean.getName() %></a>
								</h2>

								<div class="product-carousel-price">
									<ins><%=serviceBean.getPrice()%></ins>
									<del><%=serviceBean.getPrice() + (serviceBean.getPrice() * 0.10)%></del>
								</div>
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>



		</div>
	</div>
	<!-- End main content area -->

	<div class="brands-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="brand-wrapper">
						<div class="brand-list">
							<img src="assets/users/img/brand1.png" alt=""> <img
								src="assets/users/img/brand2.png" alt=""> <img
								src="assets/users/img/brand3.png" alt=""> <img
								src="assets/users/img/brand4.png" alt=""> <img
								src="assets/users/img/brand5.png" alt=""> <img
								src="assets/users/img/brand6.png" alt=""> <img
								src="assets/users/img/brand1.png" alt=""> <img
								src="assets/users/img/brand2.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End brands area -->

	<div class="product-widget-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top Selling</h2>
						<a href="" class="wid-view-more">View All</a>

						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="assets/users/products/main.jpg"
								alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.html"></a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins></ins>
								<del></del>
							</div>
						</div>
					

					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Recently Viewed</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="assets/users/img/product-thumb-4.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="assets/users/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony Smart Air Condtion</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="assets/users/img/product-thumb-2.jpg" alt=""
								class="product-thumb"></a>
							
							<h2>
								<a href="single-product.html">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top New</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="assets/users/img/product-thumb-3.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="assets/users/img/product-thumb-4.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.html"><img
								src="assets/users/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product.html">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End product widget area -->

	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>
							<span>Local Service
							]</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Perferendis sunt id doloribus vero quam laborum quas alias
							dolores blanditiis iusto consequatur, modi aliquid eveniet
							eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit,
							debitis, quisquam. Laborum commodi veritatis magni at?</p>
						<div class="footer-social">
							<a href="#" target="_blank"><i class="fa fa-facebook"></i></a> <a
								href="#" target="_blank"><i class="fa fa-twitter"></i></a> <a
								href="#" target="_blank"><i class="fa fa-youtube"></i></a> <a
								href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">User Navigation</h2>
						<ul>
							<li><a href="#">My account</a></li>
							<li><a href="#">Order history</a></li>
							<li><a href="#">Adress</a></li>
							<li><a href="#">Vendor contact</a></li>
							<li><a href="#">Contact No</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
							<li><a href="#">Electician Service</a></li>
							<li><a href="#">Plumber</a></li>
							<li><a href="#">Doctor</a></li>
							<li><a href="#">Teacher</a></li>
							<li><a href="#">Health Care</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<form action="#">
								<input type="email" placeholder="Type your email"> <input
									type="submit" value="Subscribe">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer top area -->

	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
							&copy; 2015 uCommerce. All Rights Reserved. <a
								href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a>
						</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i> <i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div>   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/
bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="assets/user/js/owl.carousel.min.js"></script>
    <script src="assets/user/js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="assets/user/js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="assets/user/js/main.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="assets/user/js/bxslider.min.js"></script>
	<script type="text/javascript" src="assets/user/js/script.slider.js"></script>
  </body>
</html>
