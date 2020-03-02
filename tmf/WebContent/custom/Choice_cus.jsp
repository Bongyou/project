<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String User=(String)session.getAttribute("User");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Too Much Fashion</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

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
				padding:0px 25px;
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
				display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
				height:auto;
				padding:0px;
				margin:0px;
				border:0px;
				position:absolute;
				width:200px;
				z-index:200;
				/*top:1em;
				/*left:0;*/
			}

			.menubar li:hover ul{
				display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
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
				margin-top:10%;
			}
			
			.pr img{
				width:100%;
				height: 800px;
			}

			.content{
				background-color: white;
				height: 100%;
				margin-top: 10%;
				display: inline-block;
			}

			.content img{
				width: 350px ;
				height: 350px;
				margin: 10px 10px 10px 10px;
				float: left;
			}
			
			.one{
				background-image:url('../image/크리스탈물방울/1.jpg');
				background-size:cover;
				-webkit-filter:grayscale(100%);
				filter:gray;
				width:200px;
				height:300px;
				float:left;
				margin:30px;
				color:white;
				cursor:pointer;
			}
			
			.two{
				background-image:url('../image/라벤더하트/2.jpg');
				background-size:cover;
				-webkit-filter:grayscale(100%);
				filter:gray;
				width: 200px;
				height: 300px;
				float:left;
				margin:30px;
				color: white;
				cursor: pointer;
			}
			
			.three{
				background-image:url('../image/라운드골드/3.jpg');
				background-size:cover;
				-webkit-filter:grayscale(100%);
				filter:gray;
				width: 200px;
				height: 300px;
				float:left;
				margin:30px;
				color: white;
				cursor: pointer;
			}
			
			.sele{
				margin-left: 370px;
			}
			
			.one:hover{
				background-image: none;
				background:#c8c8c8;
			}
			
			.two:hover{
				background-image: none;
				background:#c8c8c8;
			}
			
			.three:hover{
				background-image: none;
				background:#c8c8c8;
			}
	  </style>
	  <script>
	  	function go_1st(){
	  		location.href="1st.jsp";
	  	}
	  	
	  	function go_2nd(){
	  		location.href="2nd.jsp";
	  	}
	  	
	  	function go_3rd(){
	  		location.href="3rd.jsp";
	  	}
	  </script>
</head>
<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<div class="menubar">
		  		<ul>
		  			<li><a href="../main.jsp">TMF</a></li>
<li><a href="../info.jsp">ABOUT</a></li>
<li><a href="../search.jsp">SEARCH</a></li>
<li><a href="../manager/magagement.jsp">MANAGEMENT</a></li>
<li><a href="../ready/newarrivals.jsp">NEW ARRIVALS</a></li>
<li><a href="../ready/best.jsp">BEST</a></li>
<li><a href="../ready/sale.jsp">SALE</a></li>
<li><a href="../ready/readymade.jsp">READY-MADE</a></li>
<li><a href="Choice_cus.jsp">HAND-MADE</a></li>
					<li><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
		  			<%
		  				if(User==null){
		  			%>
		  			<li><a href="#" id="current">ACCOUNT</a>
						<ul>
							<li><a href="../login/loginForm.jsp">LOGIN</a></li>
							<li><a href="../member/regFormImpl.jsp">JOIN US</a></li>
						</ul>
		  			</li>
		  		</ul>
		  </div>
		  			<%
		  				}
		  				else{
		  			%>
					<li><a href="#" id="current"><%= User%>님</a>
						<ul>
							<li><a href="../ready/order.jsp">Order</a></li>
<li><a href="../ready/shoppingCart.jsp">Cart</a></li>
						</ul>
		  			</li>
					<li><a href="#" onclick="logout()">Logout</a></li>
					<script type="text/javascript">
						function logout(){
							var con=confirm("Do you want Logout?");
							if(con==true){
								location.href="../login/logoutProc.jsp";
							}
							else{
								return;
							}
						}
					</script>
		  			<%
		  				}
		  			%>
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
			  <img src="../image/main1.jpg" width="100%" height="100%" >
			</div>
			<div class="carousel-item">
			  <img src="../image/main2.jpg" width="100%" height="100%">
			</div>
			<div class="carousel-item">
			  <img src="../image/main3.jpg" width="100%" height="100%">
			</div>
		  </div>
		</div>
		<br><br>
		<p class="text-center">Customizing</p>
		<br><br><br><br>
		<div class="sele text-center">
			<div class="one" onclick="go_1st()">
				<br><br><br><br><br><br>
				1단귀걸이
			</div>
			<div class="two" onclick="go_2nd()">
				<br><br><br><br><br><br>
				2단귀걸이
			</div>
			<div class="three" onclick="go_3rd()">
				<br><br><br><br><br><br>
				3단귀걸이
			</div>
		</div>
		<br><br><br>
    </body>
</html>