<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Import & Export Management System</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });
		 
	});
	</script>
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
                            <h1><a href="index.jsp"><span style="font-weight: bold;">Import &</span>Export<span style="font-weight: bold; font-size:14px;">System</span></a></h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
					<li><a href="AdminLogin.jsp" style="font-family: cursive; font-size: 20px; font-weight: bold;">Admin</a><i>/</i></li>
					<li><a href="CustomerLogin.jsp" style="font-family: cursive; font-size: 20px; font-weight: bold;">Customer</a><i>/</i></li>
					<li><a href="Deliverylogin.jsp" style="font-family: cursive; font-size: 20px; font-weight: bold;">Delivery Boy</a><i>/</i></li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email" style="font-weight: bold; font-family: cursive;">
					<li><i class="fa fa-phone" aria-hidden="true" style="font-weight: bold;"></i>(+0123) 234 567</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true" style="font-weight: bold;"></i><a href="#">import&export@gmail.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- banner -->

        <div class="container-fluid"><div class="row mb-5" style="margin-top: 20px;margin-bottom: 20px;">
                <div class="col-lg-2"></div>   
                <div class="col-lg-8">
                     
               
                     <div class="col-lg-2">
                     <img src="images/fruits.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;"alt="fruits" >
                     <div class="text-center">fruits</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/toys.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;"alt="toys" >
                     <div class="text-center">toys</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/pharmacy.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;width:130px;height:130px;"alt="books" >
                     <div class="text-center">pharmacy</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/vegetables.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;"alt="Vegetables" >
                     <div class="text-center">Vegetables</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/furniture.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;"alt="Vegetables" >
                     <div class="text-center">furniture</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/food.jpg" class="rounded-circle img-responsive" style="border-radius:50%;width:130px;height:130px;"alt="Vegetables" >
                     <div class="text-center">food</div>
                    
                 </div>
               
                </div>   
                 <div class="col-lg-2"></div>   
                
            </div>
              <div class="container-fluid"><div class="row mb-5" style="margin-top: 20px;margin-bottom: 20px;">
                <div class="col-lg-2"></div>   
                <div class="col-lg-8">
                     
               
                     <div class="col-lg-2">
                     <img src="images/dress.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;"alt="fruits" >
                     <div class="text-center">dress</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/mobiles.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;width:130px;height:130px;"alt="toys" >
                     <div class="text-center">mobiles</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/books.jpeg" class="rounded-circle img-resposive" style="border-radius:50%;width:130px;height:130px;"alt="books" >
                     <div class="text-center">books</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/electronics.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;width:130px;height:130px;"alt="Vegetables" >
                     <div class="text-center">electronics</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/cosmetics.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;"alt="Vegetables" >
                     <div class="text-center">cosmetics</div>
                    
                 </div>
               
                     <div class="col-lg-2">
                     <img src="images/home.jpeg" class="rounded-circle img-responsive" style="border-radius:50%;"alt="Vegetables" >
                     <div class="text-center">home</div>
                    
                 </div>
               
                </div>   
                 <div class="col-lg-2"></div>   
                
            </div>
       
            


            </div>
    </div>
	<div class="banner">
		<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner" style="height:400px; margin-right: 200px;">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="CustomerLogin.jsp" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1" style="height:400px; margin-right: 200px;">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="CustomerLogin.jsp" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2" style="height:400px; margin-right: 200px;">
								<h3>upto <i>50%</i> off.</h3>
								<div class="more">
									<a href="CustomerLogin.jsp" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>
			<!-- //flexSlider -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- banner -->

<div class="clearfix"> </div>
	</div>
<!-- top-brands -->
<!-- //top-brands -->
<!-- fresh-vegetables -->
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.js"></script>
<script>
		paypal.minicart.render();

		paypal.minicart.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});

	</script>
</body>
</html>
