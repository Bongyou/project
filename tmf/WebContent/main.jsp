<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	  <title>Too Much Fashion</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
      	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      	<script src="//code.jquery.com/jquery-1.12.4.js"></script>
      	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <!--slide-->
      	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <!--slide-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	  <style>
		/* Make the image fully responsive */
	  	.carousel-inner img {
	    	width: 100%;
	    	height:100%;
	  	}
	
		.carousel-indicators{
	 		border-radius: 100%;
		}
		
	  	#myCarousel{
	    	margin-top:0px;
	    	width: 100%;
	    	position: relative;
	    	z-index: 1;
	  	}
	
	  	.menubar{
			border:none;
			background: rgba(255, 255, 255, 0);
			border:0px;
			margin:0px;
			width: 100%;
			padding:0px;
			font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
			font-size:15px;
			font-weight:bold;
			position: fixed;
			top:0px;
			z-index: 2;
		}
	
		.menubar ul{
			background:  rgba(255, 255, 255, 0);
			height:50px;
			list-style:none;
			margin:0;
			margin-right:20px;
			padding:0;
			float: right;
		}
	
		.menubar li{
			float:left;
			padding:0px;
		}
	
		.menubar li a{
			background:  rgba(255, 255, 255, 0);
			color:black;
			display:block;
			font-weight:normal;
			line-height:50px;
			margin:0px;
			padding:0px 15px;
			text-align:center;
			text-decoration:none;
		}
	
		.menubar li a:hover, .menubar ul li:hover a{
			background:none;
			color:black;
			text-decoration:underline;
		}
	
		.menubar li ul{
			background: rgba(255, 255, 255, 0);
			display:none;
			height:auto;
			padding:0px;
			margin:0px;
			border:0px;
			width:200px;
			position:absolute;
			z-index:200;
		}
	
		.menubar li:hover ul{
			display:block;
		}
	
		.menubar li li {
			background:  rgba(255, 255, 255, 0);
			display:block;
			float:none;
			margin:0px;
			padding:0px;
			width:200px;
		}
	
		.menubar li:hover li a{
	  		background:none;
		}
	
		.menubar li ul a{
			display:block;
			height:50px;
			font-size:12px;
			font-style:normal;
			margin:0px;
			padding:0px 10px 0px 15px;
			text-align:left;
		}
	
		.menubar li ul a:hover, .menubar li ul li:hover a{
			background:  rgba(255, 255, 255, 0);
			border:0px;
			color:black;
			text-decoration:none;
		}
	
		.menubar p{
			clear:left;
		}
		
		.pr{
	  		width: 80%;
	  		margin-top:10%;
		}
		
		.pr img{
	  		-webkit-filter: grayscale(60%);
		}
	
		.content{
	 		background-color: white;
	  		height: 100%;
	  		margin-top: 10%;
	  		display: inline-block;
		}
	
		.content img{
	  		width: 350px;
	  		height: 350px;
	  		margin: 10px 10px 10px 10px;
	  		float: left;
		}
	
		.intro{
		}
	
		.team{
	  		width: 33%;
	  		height: 150px;
	  		margin-top:10%;
	  		display: inline-block;
	  		float: left;
	  		background-color: white;
		}
	
		.intro img{
	  		width: 200px;
	  		height: 200px;
	  		border-radius: 100%;
	  		margin:70px 50px 70px 50px;
		}	
	  </style>
	</head>
	<body>
		<%
		   String loginId=(String)session.getAttribute("loginId");
		   if(loginId==null){
		%>
		<script type="text/javascript">
			location.href="login/login.html";
		</script>
		<%
		   }
		   else{
		   	Connection conn=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			String user=null;
			try{
				conn=Conn.getConnection();
				String sql="select * from `customer`";
				ps=conn.prepareStatement(sql);
				rs=ps.executeQuery();
				while(rs.next()){
					String id=rs.getString("c_id");
					if(loginId.equals(id.trim())){
						user=rs.getString("c_name");
						session.setAttribute("User", user);
						session.setMaxInactiveInterval(60*60);
		%>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<div class="menubar">
		  		<ul>
<li><a href="main.jsp">TMF</a></li>
<li><a href="info.jsp">ABOUT</a></li>
<li><a href="search.jsp">SEARCH</a></li>
<li><a href="manager/magagement.jsp">MANAGEMENT</a></li>
<li><a href="ready/newarrivals.jsp">NEW ARRIVALS</a></li>
<li><a href="ready/best.jsp">BEST</a></li>
<li><a href="ready/sale.jsp">SALE</a></li>
<li><a href="ready/readymade.jsp">READY-MADE</a></li>
<li><a href="custom/Choice_cus.jsp">HAND-MADE</a></li>
					<li><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
					<li><a href="#" id="current"><%= user%>님</a>
						<ul>
							<li><a href="order.jsp">Order</a></li>
<li><a href="shoppingCart.jsp">Cart</a></li>
						</ul>
		  			</li>
					<li><a href="#" onclick="logout()">Logout</a></li>
					<script type="text/javascript">
						function logout(){
							var con=confirm("Do you want Logout?");
							if(con==true){
								location.href="login/logoutProc.jsp";
							}
							else{
								return;
							}
						}
					</script>
		  		</ul>
		  </div>

		  <!-- Indicators-->
		  <ul class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		  </ul>

		  <!-- The slideshow -->
		  <div class="carousel-inner">
			<div class="carousel-item active">
			  <img src="image/main1.jpg" width="100%" height="100%" >
			</div>
			<div class="carousel-item">
			  <img src="image/main2.jpg" width="100%" height="100%">
			</div>
			<div class="carousel-item">
			  <img src="image/main3.jpg" width="100%" height="100%">
			</div>
		  </div>
		</div>

		<center>
			<div class="content">
				<a href="ready/1.jsp"><img src="image/샴페인골드/1.jpg"></a>
				<a href="ready/8.jsp"><img src="image/오로라드롭/1.jpg"></a>
				<a href="ready/16.jsp"><img src="image/카키태슬/1.jpg"></a>
				<br/>
				<a href="ready/3.jsp"><img src="image/블루문스톤/1.jpg"></a>
				<a href="ready/9.jsp"><img src="image/하트하트/1.jpg"></a>
				<a href="ready/17.jsp"><img src="image/화이트스노우태슬/1.jpg"></a>
				<br/>
				<a href="ready/10.jsp"><img src="image/다크나잇/1.jpg"></a>
				<a href="ready/6.jsp"><img src="image/라벤더하트/1.jpg"></a>
				<a href="ready/5.jsp"><img src="image/라운드골드/1.jpg"></a>
				<br/>
				<a href="ready/7.jsp"><img src="image/스노우샹들리에/1.jpg"></a>
				<a href="ready/13.jsp"><img src="image/실버태슬/1.jpg"></a>
				<a href="ready/2.jsp"><img src="image/크리스탈물방울/1.jpg"></a>
			</div>
		</center>

		<div class="pr">
			<a href="info.jsp"><img src="image/abo.jpg"></a>
		</div>
		<br><br><br><br>
		<div class="intro text-center">

		</div>
		<%
		   			}
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				Conn.close(rs, ps, conn);
			}
		   }
		%>
	</body>
</html>