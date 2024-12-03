<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
			<form action="#" method="post">
				<input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">
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
						<li><a href="Profile.jsp">Profile</a></li>                                               
						<li><a href="Viewmenu.jsp">Menu</a></li>
						<li><a href="Viewstatus.jsp">View Order Detail</a></li>
						<li><a href="Viewtranaaction1.jsp">View all Transaction Details</a></li>
                                                <li><a href="index.jsp">Logout</a></li>
						
					</ul>
</div></div>
		<div class="w3l_banner_nav_right">
					
               <style>
                tr,td{
                    color: black;
                    font-family: cursive;
                    font-size: 20px;
                    padding: 10px;
                }
                table{
                    border-radius: 30px;
                    background: #ccc;
                }
                                    
            </style>
                                     <% 
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Canteen","root","root");
                        String id=session.getAttribute("id").toString();
                       
                        String name=session.getAttribute("name").toString();
                         String ftableName=request.getParameter("ftableName");
String fname=request.getParameter("fname");
String fdes=request.getParameter("fdes");

String cost=request.getParameter("cost");
String quan=request.getParameter("qua");
String ready=request.getParameter("ready");
String addr=request.getParameter("addr");
String pay=request.getParameter("pay");
String image;
               
                if(pay.equalsIgnoreCase("Online_Payment")){
                 %> 
             
                        <form action="orderaction1.jsp">         
                            <h1 align="center" style="color:red">Enter Your Bank Details</h1><br><br>
                        <table align="center">
                        <input type="hidden" name="fname" value="<%=fname%>">
                        <input type="hidden" name="fdes" value="<%=fdes%>">
                        <input type="hidden" name="cost" value="<%=cost%>">
                        <input type="hidden" name="quan" value="<%=quan%>">
                        <input type="hidden" name="ready" value="<%=ready%>">
                        <input type="hidden" name="addr" value="<%=addr%>">
                        <input type="hidden" name="pay" value="<%=pay%>">
                        <input type="hidden" name="ftableName" value="<%=ftableName%>">
                        
                        <tr align="center"><td>Your Name </td><td><input type="text" name="name" value="<%=name%>" readonly=""></td></tr>
                        <tr align="center"><td>Bank Name</td><td><input type="text" name="bank" requried=""></td></tr>
                        <tr align="center"><td>Brach name</td><td><input type="text"  name="brach" requried=""></td></tr>
                        <tr align="center"><td>IFSC-Code</td><td><input type="text" name="ifsc" requried=""></td></tr>
                        <tr align="center"><td>Expiry Date</td><td><input type="text" name="exp" style="width:300px;" required=""></td></tr>
                        <tr><td align="center" colspan="2"><button type="submit">PAY</button></td></tr>
                        </table></form>
                        
                    <%} else{
                     
                    PreparedStatement q2=con.prepareStatement("select * from "+ftableName+ " where fname='"+fname+"' and fdes='"+fdes+"' and cost='"+cost+"' ");
                    ResultSet r2=q2.executeQuery();
                    if(r2.next()){
                    String image1=r2.getString("fimage"); 
                    System.out.println(q2);
                    PreparedStatement query=con.prepareStatement("insert into orders(sid,sname,fimage,fname,fdes,cost,ready,pay,qan,address,status)values ('"+id+"','"+name+"','"+image1+"','"+fname+"','"+fdes+"','"+cost+"','"+ready+"','"+pay+"','"+quan+"','"+addr+"','Waiting')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    
                    out.println("<script>alert(\"cash on _Delivery Order Succesfully\");</script>");}}
                    
                        %>
                        
		</div>
		<div class="clearfix"></div>
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
