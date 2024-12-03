<%-- 
    Document   : viewFood
    Created on : 17 May, 2024, 8:57:43 PM
    Author     : ACER
--%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
<%
                         String tableName = request.getParameter("ftableName");%>
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="#">Today's special Offers !</a>
		</div>
		<div class="w3l_search">
			<form action="Search2.jsp?" method="get">
				<input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">
                                <input type="text" value="<%=tableName%>" name="ftableName" requried="" style="display:none;">
                                <input type="submit" value=" ">
			</form>
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
                                                <li><a href="AdminHome.jsp">Home</a></li>
                                                <li><a href="AddEmply.jsp">Add Employee</a></li>
                                                <li><a href="Viewempy.jsp">View Employee</a></li>
                                                <li><a href="Addsalar.jsp">Add Salary</a></li>
                                                <li><a href="Addfood.jsp">Add Item</a></li>
                                                <li><a href="Viewitem.jsp">View,Edit,Delete,Enable</a></li>                                                
                                                <li><a href="Vieworder.jsp"> New Order& Assign Work</a></li>
                                                <li><a href="Viewtransaction.jsp">View all Assign Work Detail</a></li>
                                                <li><a href="index.jsp">Logout</a></li>
						
					</ul>
                           </div></div></div>
		
         
	<div class="w3l_banner_nav_right">  
            <div class="w3ls_w3l_banner_nav_right_grid">
                <h3 class="mb-5">View all grocery item and Edit, Delete & Enable</h3>
            </div>
                        
                       
                     
                        
                        
                        
                        
                        
                        <%
                       
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Canteen","root","root");
                        PreparedStatement query=con.prepareStatement("select * from "+tableName+" ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                       while(rs.next())
                        {
                            
                            String image=rs.getString("fimage");
                            String fno=rs.getString("fno");
                            String brand=rs.getString("fname");
                            String fdes=rs.getString("fdes");                   
                            String ready=rs.getString("ready");
                            String cost=rs.getString("cost");
                            String status=rs.getString("status");
                           
                        %> 
                                        
					
                        <div class="w3ls_w3l_banner_nav_right_grid1">
                            <div class="col-md-3 w3ls_w3l_banner_left">
						<div class="hover14 column">
						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure> 
									<div class="snipcart-item block" style="height: 350px; padding-bottom: 10px;">
										<div class="snipcart-thumb" >
											<a href="#"><img src="images/<%=image%>" alt=" " style=" height: 100px; "class="img-responsive" /></a>
                                                                                        <p style="font-family: cursive; font-size:15px; font-weight: bold;"><%=rs.getString("fname")%></p>
                                                                                        <h4 style="font-family: cursive; font-size:15px; font-weight: bold;"> Rs./<%=rs.getString("cost")%></h4><br>
											<h4 style="font-family: cursive; font-size:15px; font-weight: bold;">Available :<%=rs.getString("ready")%></h4>
                                                                                        <p style="font-family: cursive; font-size:15px; font-weight: bold;">Status :<%=rs.getString("status")%></p>
										</div>
                                                                                <div class="snipcart-details"><br>
                                                                                   
                                                                              <a href="delete.jsp?fimage=<%=image%>&&ftableName=<%=tableName%>&&fname=<%=rs.getString("fname")%>&&fno=<%=rs.getString("fno")%>" style="color: #a367e7;"><img src="images/delete.jpg" alt="delete" style="width: 30px; height: 30px;"></a>&nbsp;/&nbsp;<a href="edit.jsp?status=<%=rs.getString("status")%>&&ftableName=<%=tableName%>&&cost=<%=rs.getString("cost")%>&&fdes=<%=rs.getString("fdes")%>&&ready=<%=rs.getString("ready")%>&&fimage=<%=image%>&&fname=<%=rs.getString("fname")%>&&fno=<%=rs.getString("fno")%>" style="color: #a367e7;"><img src="images/edit.jpg" alt="edit" style="width: 30px; height: 30px;"></a>&nbsp;/<a href="enable.jsp?fimage=<%=image%>&&fname=<%=rs.getString("fname")%>&&fno=<%=rs.getString("fno")%>" style="color: #a367e7;">&nbsp;<img src="images/add.jpg" alt="Enable" style="width: 45px; height: 45px;"></a>
                                                                                  		
										</div>
									 </div>
								</figure>
							</div>
						</div>
						</div>
					</div><%}%>
                                </div></div>
				</div>
		
		<div class="clearfix"></div>
	
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
