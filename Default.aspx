﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="false" Inherits="TourPlanWeb._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<script src="js/jquery.min.js"></script>
		<!---script---->
		<link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css" />
		<script src="js/jquery.bxslider.js"></script>
			<script type="text/javascript">
				$(document).ready(function(){
					$('.bxslider').bxSlider({
						 auto: true,
 						 autoControls: true,
						 minSlides: 4,
						 maxSlides: 4,
						 slideWidth:450,
						 slideMargin: 10
					});
				});
			</script>
		<!---//script---->
		<!---smoth-scrlling---->
			<script type="text/javascript">
				$(document).ready(function(){
									$('a[href^="#"]').on('click',function (e) {
									    e.preventDefault();
									    var target = this.hash,
									    $target = $(target);
									    $('html, body').stop().animate({
									        'scrollTop': $target.offset().top
									    }, 1000, 'swing', function () {
									        window.location.hash = target;
									    });
									});
								});
				</script>
		<!---//smoth-scrlling---->
		<!---webfonts---->
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!---webfonts---->
		<!---calender-style---->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<!---//calender-style---->
		<script src="js/responsiveslides.min.js"></script>
		<script>
    // You can also use "$(window).load(function() {"
    $(function () {
      // Slideshow 1
      $("#slider1").responsiveSlides({
         auto: true,
		 nav: true,
		 speed: 500,
		 namespace: "callbacks",
      });
    });
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!----start-wrap---->
			<!----start-top-header----->
			<div class="top-header" id="header">
				<div class="wrap">
				<div class="top-header-left">
					<ul>
						<li><a href="#"><span> </span> Agent Login</a></li>
						<li><a href="#"><span> </span> Agent Login</a></li>
						<li><p><span> </span>Not a Member ? </p>&nbsp;<a class="reg" href="#"> Register</a></li>
						<li><p class="contact-info">Call Us Now :815-123-4567</p></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="top-header-right">
					<ul>
						<li><a class="face" href="#"><span> </span></a></li>
						<li><a class="twit" href="#"><span> </span></a></li>
						<li><a class="thum" href="#"><span> </span></a></li>
						<li><a class="pin" href="#"><span> </span></a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			</div>
			<!----//End-top-header----->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!--- start-logo---->
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="voyage" /></a>
				</div>
				<!--- //End-logo---->
				<!--- start-top-nav---->
				<div class="top-nav">
						<div class="navigation">
		<span class="menu"></span> 
			<ul class="navig cl-effect-16">
				<li class="active"><a href="index.html">Home</a></li>
				<li><div class="menu-top">
										<a href="destinations.html" >Destinations</a>
										<ul class="sub">
											<li><a href="#">Dropdown item</a></li>
											<li><a href="#">Dropdown item</a></li>	
											<li>
												<div class="menu-top">
										<a href="destinations.html" >Dropdown item</a>
										<ul class="sub sub2">
											<li><a href="#">Dropdown item</a></li>
											<li><a href="#">Dropdown item</a></li>	
											<li><a href="#">Dropdown item</a></li>
											<li><a href="#">Dropdown item</a></li>
											<li><a href="#">Dropdown item</a></li>
										</ul>
									</div>
											</li>
											<li><a href="#">Dropdown item</a></li>
											<li><a href="#">Dropdown item</a></li>
										</ul>
									</div>
				</li>
				<li><a href="criuses.html">Cruises</a></li>
				<li><a href="destinations.html">Specials</a></li>
				<li><a href="destinations.html">Holidays</a></li>
				<li><a href="blog.html">Blog</a></li>
			</ul>
	</div>
                        <%--<div class="search-box">
							<div id="sb-search" class="sb-search">
								<form>
									<input class="sb-search-input" placeholder="Enter your search term..." type="searchb" name="searchb" id="searchb">
									<input class="sb-search-submit" type="submit" value="">
									<span class="sb-icon-search"> </span>
								</form>
							</div>
						</div>--%>
						<!----search-scripts---->
						<%--<script src="js/modernizr.custom.js"></script>
						<script src="js/classie.js"></script>--%>
						<%--<script src="js/uisearch.js"></script>
						<script>
						    new UISearch(document.getElementById('sb-search'));
						</script>--%>
						<!----//search-scripts---->
				</div>
				<!--- //End-top-nav---->
				<div class="clear"> </div>
			</div>
			<!---//End-header---->
		</div>
		<!--script-for-menu-->
		<script>
		    $("span.menu").click(function () {
		        $(" ul.navig").slideToggle("slow", function () {
		        });
		    });
		</script>
	<!--script-for-menu-->
		<!----start-images-slider---->
		<div class="images-slider">
			 <div class="slider">
				<ul class="rslides" id="slider1">
					<li>
						<div class="slide-text">
						<h4 class="title">To travel is to live</h4>
						<p class="description">You Don't Need Magic to Disappear. All you need is a destination.</p>
						<div class="slide-btns">
		                    <div class="s-btn1">
								<a href="#">Show on the map</a>
							</div>
							<div class="s-btn2">
								<a href="#">More info</a>
							</div>
		                </div>
						</div>
					</li>
					<li>
					<div class="slide-text">
						<h4 class="title">To travel is to live</h4>
						<p class="description">Pellentesque eu metus eu diam scelerisque eleifend at vitae </p>
						<div class="slide-btns">
		                    <div class="s-btn1">
								<a href="#">Show on the map</a>
							</div>
							<div class="s-btn2">
								<a href="#">More info</a>
							</div>
		                </div>
						</div>
					</li>
					<li>
						<div class="slide-text">
						<h4 class="title">To travel is to live</h4>
						<p class="description"> Class aptent taciti sociosqu ad litora torquent per conubia</p>
						<div class="slide-btns">
		                    <div class="s-btn1">
								<a href="#">Show on the map</a>
							</div>
							<div class="s-btn2">
								<a href="#">More info</a>
							</div>
		                </div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!----start-find-place---->
		<div class="find-place">
			<div class="wrap">
				<div class="p-h">
					<span>FIND YOUR</span>
					<label>HOLYDAYS</label>
				</div>
				<!---strat-date-piker---->
				  <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
				  <script>
				      $(function () {
				          $("#datepicker").datepicker();
				      });
				  </script>
				<!---/End-date-piker---->
				<div class="p-ww">
					<form>
						<span> Booking ID</span>
						<input class="dest" type="text" value="Reference ID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Destination';}">
						<asp:Button ID="btnSearch" CssClass="s-btn1" runat="server" Text="Search" OnClick="btnSearch_Click" />
                        <asp:Button ID="btnCreateBooking" CssClass="s-btn1" runat="server" Text="Create Booking" />

                        <%--<div id="SearchDiv" runat="server">
                            Search Criteria
                            <br />
                            <div>
                                Booking Name : <asp:TextBox ID="txtBookingName" runat="server"></asp:TextBox>
                            </div>
                            <br />
                            <div>
                                Adults : <asp:TextBox ID="txtAdults" runat="server"></asp:TextBox>
                            </div>
                            <br /><br />
                            <div id="">
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>--%>

					</form>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!----//End-find-place---->
		<!----start-offers---->
		<div class="offers">
			<div class="offers-head">
				<h3>Special Offers</h3>
				<p>Best 2014 packages where people love to stay!</p>
			</div>
			<!-- start content_slider -->
			<!-- FlexSlider -->
			 <!-- jQuery -->
			  <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
			  <!-- FlexSlider -->
			  <script defer src="js/jquery.flexslider.js"></script>
			  <script type="text/javascript">
			      $(function () {
			          SyntaxHighlighter.all();
			      });
			      $(window).load(function () {
			          $('.flexslider').flexslider({
			              animation: "slide",
			              animationLoop: true,
			              itemWidth: 250,
			              itemMargin: 5,
			              start: function (slider) {
			                  $('body').removeClass('loading');
			              }
			          });
			      });
			  </script>
			<!-- Place somewhere in the <body> of your page -->
				 <section class="slider">
		        <div class="flexslider carousel">
		          <ul class="slides">
		            <li onclick="location.href='#';">
		  	    	    <img src="images/p1.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p2.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p3.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p4.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		            <li onclick="location.href='#';">
		  	    	    <img src="images/p5.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p6.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p1.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p2.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		             <li onclick="location.href='#';">
		  	    	    <img src="images/p3.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    	 <li onclick="location.href='#';">
		  	    	    <img src="images/p4.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p5.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="images/p6.jpg" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">Hong Kong & Macau</a></h4>
			  	    	    	 	<span>Bonus Extras!</span>
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		          </ul>
		        </div>
		      </section>
              <!-- //End content_slider -->
		</div>
		<!----//End-offers---->
		<!---start-holiday-types---->
			<div class="holiday-types">
				<div class="wrap">
					<div class="holiday-type-head">
						<h3>Holidays Type</h3>
						<span>get explore your dream to travel the world!</span>
					</div>
					<div class="holiday-type-grids">
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon1"> </span>
							<a href="#">Cruise</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon2"> </span>
							<a href="#">City Breaks</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon3"> </span>
							<a href="#">Honeymoon</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon4"> </span>
							<a href="#">Adventure</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon5"> </span>
							<a href="#">Safari</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon6"> </span>
							<a href="#">Beach</a>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				</div>
		<!---//End-holiday-types---->
		<!----//End-images-slider---->
		<!----start-clients---->
		<div class="clients">
			<div class="client-head">
				<h3>Happy Clients</h3>
				<span>what customer say about us and why love our services!</span>
			</div>
			<div class="client-grids">
				<ul class="bxslider">
				  <li>
				  	<p>Lorem Ipsum is simply dummy text of the printing and typeset industry. Lorem Ipsum has been the industry's standard dummy text ever hen an with new version look.</p>
				  	<a href="#">Client Name</a>
				  	<span>United States</span>
				  	<label> </label>
				  </li>
				  <li>
				  	<p>Lorem Ipsum is simply dummy text of the printing and typeset industry. Lorem Ipsum has been the industry's standard dummy text ever hen an with new version look.</p>
				  	<a href="#">Client Name</a>
				  	<span>United States</span>
				  	<label> </label>
				  </li>
				  <li>
				  	<p>Lorem Ipsum is simply dummy text of the printing and typeset industry. Lorem Ipsum has been the industry's standard dummy text ever hen an with new version look.</p>
				  	<a href="#">Client Name</a>
				  	<span>United States</span>
				  	<label> </label>
				  </li>
				  <li>
				  	<p>Lorem Ipsum is simply dummy text of the printing and typeset industry. Lorem Ipsum has been the industry's standard dummy text ever hen an with new version look.</p>
				  	<a href="#">Client Name</a>
				  	<span>United States</span>
				  	<label> </label>
				  </li>
				  <li>
				  	<p>Lorem Ipsum is simply dummy text of the printing and typeset industry. Lorem Ipsum has been the industry's standard dummy text ever hen an with new version look.</p>
				  	<a href="#">Client Name</a>
				  	<span>United States</span>
				  	<label> </label>
				  </li>
				</ul>
			</div>
		</div>
		<!----//End-clients---->
		<!----start-footer---->
		<div class="footer">
			<div class="wrap">
			<div class="footer-grids">
				<div class="footer-grid Newsletter">
					<h3>News letter </h3>
					<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore.</p>
					<form>
						<input type="text" placeholder="Subscribes.." /> <input type="submit" value="GO" />
					</form>
				</div>
				<div class="footer-grid Newsletter">
					<h3>Latest News </h3>
					<div class="news">
						<div class="news-pic">
							<img src="images/f01.jpg" title="news-pic1" /> 
						</div>
						<div class="news-info">
							<a href="#">Postformat Gallery: Multiple images</a>
							<span>December 12, 2012 - 9:11 pm</span>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="news">
						<div class="news-pic">
							<img src="images/f01.jpg" title="news-pic1" /> 
						</div>
						<div class="news-info">
							<a href="#">Postformat Gallery: Multiple images</a>
							<span>December 12, 2012 - 9:11 pm</span>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<div class="footer-grid tags">
					<h3>Tags</h3>
					<ul>
						<li><a href="#">Agent login</a></li>
						<li><a href="#">Customer Login</a></li>
						<li><a href="#">Not a Member?</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">New Horizons</a></li>
						<li><a href="#">Landscape</a></li>
						<li><a href="#">Tags</a></li>
						<li><a href="#">Nice</a></li>
						<li><a href="#">Some</a></li>
						<li><a href="#">Portrait</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="footer-grid address">
					<h3>Address </h3>
					<div class="address-info">
						<span>DieSachbearbeiter Schonhauser </span>
						<span>Allee 167c,10435 Berlin Germany</span>
						<span><i>E-mail:</i><a href="mailto:moin@blindtextgenerator.de">moin@blindtextgenerator.de</a></span>
					</div>
					<div class="footer-social-icons">
						<ul>
							<li><a class="face1 simptip-position-bottom simptip-movable" data-tooltip="facebook" href="#"><span> </span></a></li>
							<li><a class="twit1 simptip-position-bottom simptip-movable" data-tooltip="twitter" href="#"><span> </span></a></li>
							<li><a class="tub1 simptip-position-bottom simptip-movable" data-tooltip="tumblr" href="#"><span> </span></a></li>
							<li><a class="pin1 simptip-position-bottom simptip-movable" data-tooltip="pinterest" href="#"><span> </span></a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
			</div>
		</div>
		<!----//End-footer---->
		<!---start-subfooter---->
		<div class="subfooter">
			<div class="wrap">
				<ul>
					<li><a href="index.html">Home</a><span>::</span></li>
					<li><a href="destinations.html">Destinations</a><span>::</span></li>
					<li><a href="criuses.html">Cruises</a><span>::</span></li>
					<li><a href="destinations.html">Specials</a><span>::</span></li>
					<li><a href="destinations.html">Holidays</a><span>::</span></li>
					<li><a href="blog.html">Blog</a><span>::</span></li>
					<li><a href="contact.html">Contact Us</a></li>
					<div class="clear"> </div>
				</ul>
				<p class="copy-right">&copy; 2014 Voyage. All rights reserved | Template by <a href="http://w3layouts.com/">W3layouts</a></p>
				<a class="to-top" href="#header"><span> </span> </a>
			</div>
		</div>
		<!---//End-subfooter---->
		<!----//End-wrap---->
    </div>
    </form>
</body>
</html>
