<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="#">Today's special Offers !</a>
		</div>
		<div class="w3l_search">
			
		</div>
		<div class="product_list_header">  
			<form action="#" method="post" class="last">
                <fieldset>
                    <input type="hidden" name="cmd" value="_cart" />
                    <input type="hidden" name="display" value="1" />
                    
                </fieldset>
            </form>
		</div>
		
		<div class="w3l_header_right1">
			<h2><a href="#">Contact Us</a></h2>
		</div>
		<div class="clearfix"> </div>
	</div>
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
	<div class="banner">      
            	<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
            
<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
                                                <li><a href="Profile.jsp">Profile</a></li>                                                
						<li><a href="Viewmenu.jsp">Menu</a></li>
						<li><a href="Viewstatus.jsp">View Order Detail</a></li>
						<li><a href="Viewtranaaction1.jsp">View all Transaction Details</a></li>
                                                <li><a href="index.jsp">Logout</a></li>
						
					</ul>
</div></div>
                    
		<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
                    <style>
                    tr,td{
                                        font-family: cursive;
                                        font-size: 20px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        width:600px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid #d39e00;
                                        border-radius: 20px;
                        		padding:5px;
                        		text-align:center;
                                        background: white;
                                        color: crimson;
                    }
                    th{
                                        color: #F0542C;
                    }
                    table{
                        		margin-left:70px;
                                        height: auto;
                        }
                        	
                        	
                        	
                </style>
            <center>
                
                            
                            
                    <h1 align="center" style="color: #449d44; font-family: cursive;
                        font-size: 30px;
                        font-weight: bold;">Order Transaction Details</h1><br>
                      <div style="overflow: scroll; width: 1000px; height: 400px;">
                
                    <table> <tr><th>Product</th>
                            <th>ID</th>
                            <th>Name</th>                            
                            <th>Product Name</th>
                            <th>Cost</th>
                            <th>Type</th>
                            <th>Quantity</th>
                            <th>Paid Amount</th>
                            <th>Status</th></tr>
                        
                        <% 
                        String id=session.getAttribute("id").toString();                            
                        String name=session.getAttribute("name").toString();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Canteen","root","root");
                        PreparedStatement query=con.prepareStatement("select * from orders where sid='"+id+"' and sname='"+name+"' and status='Delivered'");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                        {
                            String image=rs.getString("fimage");
                        %>
                        <tr><td><img src="images/<%=image%>" alt="" style="width: 90px; height: 90px; border-radius: 50px;"></td>
                            <td><%=rs.getString("sid")%></td>
                            <td><%=rs.getString("sname")%></td>                          
                            <td><%=rs.getString("fname")%></td>
                            <td>Rs. <%=rs.getString("cost")%></td>
                            <td><%=rs.getString("pay")%></td>                            
                            <td><%=rs.getString("qan")%></td>
                             <% 
        int a = Integer.parseInt(rs.getString("cost").trim()); // Assuming cost is an integer value
        int b = Integer.parseInt(rs.getString("qan").trim());// Assuming qan is an integer value
        int c = a * b; // Perform multiplication
    %>
                            
                            <td style="color:green"><%= c %></td>
                            <td><%=rs.getString("status")%></td><%}%></tr>
                       </table> </center></section></div>
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
                        <div class="clearfix"></div><br><br><br><br>
	</div>
<!-- banner -->
	
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
