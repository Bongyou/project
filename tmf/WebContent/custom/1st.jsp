<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.Conn" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
			display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
			height:auto;
			padding:0px;
			margin:0px;
			border:0px;
			width:200px;
			position:absolute;
			z-index:200;
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
	  		width: 350px ;
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
	
		.footer{
	    	width:100%;
	    	height: 100px;
	    	background: black;
		}
			
        #made{
            display: inline;
            width: 210px;
            height: 417px;
            float:left;
			margin-left:29%;
			background-image: url("../parts/ear1.png");
        }
			
		#custom3{
			height:500px;
		}
			
		#first{
			margin-top: 180px;
			width:70px;
			height:70px;
			background-size: cover;
			cursor: pointer;
			float: left;
			box-sizing: border-box;
		}
			
		#first:hover{
			background-color: rgba(255,255,255,0.5);
		}
			
		#first_i{
			padding-top: 30px;
			margin-top: 180px;
			width:75px;
			height:70px;
			float: left;
		}
			
		#sort{
			height:300px;
			float:left;
			display:none;
			margin-top: 60px;
		}
		
		#Pearl{
			display:inline none;
		}
			
        img{
            width:80px;
            height:80px;
            border:none;
            border-radius:4px;
        }
			
        img:hover{
            border:none;
            border-radius:5px;
            box-sizing: border-box;
            box-shadow: 0 0 8px 0 #ffbef5;
        }
			
        #img2{
            width:50px;
            height: 50px;
        }
			
		#sort1,#sort2,#sort3,#sort4,#sort5{
			padding: 15px;
		}
			
		#sort1:hover,#sort2:hover,#sort3:hover,#sort4:hover,#sort5:hover{
			text-decoration: underline;
			cursor: pointer;
		}
			
		#img1:hover{
			cursor: pointer;
		}
			
		.parts{
			border: none;
			box-sizing: border-box;
			box-shadow: 0 0 5px 0 #FF4646;
		}
			
		button{
  			background:#3c3c3c;
  			color:#fff;
  			border:none;
  			position:relative;
			height:40px;
			font-size:15px;
			padding-top: 10px;
			padding-left: 20px;
			padding-bottom: 20px;
			padding-right: 20px;
			cursor:pointer;
			transition:800ms ease all;
			outline:none;
		}

		button:hover{
		 	background:#fff;
		  	color:#3c3c3c;
		}

		button:before,button:after{
			content:'';
			position:absolute;
			top:0;
			right:0;
			height:2px;
			width:0;
			background: #3c3c3c;
			transition:400ms ease all;
		}

		button:after{
		    right:inherit;
			top:inherit;
			left:0;
			bottom:0;
		}

		button:hover:before,button:hover:after{
			width:100%;
			transition:800ms ease all;
		}
	  	</style>
		<script>
            function ch1(){
                var first=document.getElementById('first');
                first.value='1';
				
				if(first.value=='1'){
					first.style.boxShadow="0 0 10px 0 #FF4646";
				}
            }
			
			function check_pearl(i){
				var pa1 = document.first.p_id_1;
                var first=document.getElementById('first');
                var f=first.value;
				
                if(f=='1'){
                    first.style.backgroundImage="url('../parts/pearl"+i+".png')";
                    pa1.value=2030+i;
                }
            }
			
			function check_circle(i){
				var pa1 = document.getElementById('p_id_1');
                var first=document.getElementById('first');
                var f=first.value;
				
                if(f=='1'){
                    first.style.backgroundImage="url('../parts/circle"+i+".png')";
                    pa1.value=2010+i;
                }
            }
			
			function check_cubic(i){
				var pa1 = document.getElementById('p_id_1');
                var first=document.getElementById('first');
                var f=first.value;
				
                if(f=='1'){
                    first.style.backgroundImage="url('../parts/cubic"+i+".png')";
                    pa1.value=2020+i;
                }
            }
			
			function check_flower(i){
				var pa1 = document.getElementById('p_id_1');
                var first=document.getElementById('first');
                var f=first.value;
				
                if(f=='1'){
                    first.style.backgroundImage="url('../parts/flower"+i+".png')";
                    pa1.value = 2040+i;
                }
            }
			
			function check_heart(i){
				var pa1 = document.getElementById('p_id_1');
                var first=document.getElementById('first');
                var f=first.value;
				
                if(f=='1'){
                    first.style.backgroundImage="url('../parts/heart"+i+".png')";
                    pa1.value = 2050+i;
                }
            }
			
			$(document).ready(function(){
				$("#first").click(function(){
					$("#sort").toggle("slide");
				});
			});
			
			$(document).ready(function(){
				$("#sort1").click(function(){
					$("#Pearl").toggle("slide");
				});
			})
			
			$(document).ready(function(){
				$("#sort2").click(function(){
					$("#Circle").toggle("slide");
				});
			})
			
			$(document).ready(function(){
				$("#sort3").click(function(){
					$("#Cubic").toggle("slide");
				});
			})
			
			$(document).ready(function(){
				$("#sort4").click(function(){
					$("#Flower").toggle("slide");
				});
			})
			
			$(document).ready(function(){
				$("#sort5").click(function(){
					$("#Heart").toggle("slide");
				});
			})
			
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
		  				String user=(String)session.getAttribute("User");
		  				if(user==null){
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
		  			<li><a href="#" id="current"><%= user%>님</a>
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
        <div id="custom3" class="text-center">
            <div class="row">
                <div id="made">
					<div id="first_i">
						1st
					</div>
                    <div id="first" value="0" onclick='ch1()'>
                    
                    </div>
                </div>
				<div id="sort">
					<div id="sort1">
						<p>Pearl</p>
					</div>
					<div id="sort2">
						<p>Circle</p>
					</div>
					<div id="sort3">
						<p>Cubic</p>
					</div>
					<div id="sort4">
						<p>Flower</p>
					</div>
					<div id="sort5">
						<p>Heart</p>
					</div>
				</div>
				<div div="parts">
					<table>
						<tr>
							<div id="Pearl" class="text-left collapse">
								<script>
									var line=0;
									var nimg=1;

									for(var i=0;i<2;i++){
										document.write("<img src='../parts/pearl"+(i+1)+".png' id='img"+nimg+"' onclick='check_pearl("+(i+1)+")'>");
										nimg++;
									}
									document.write("<br>");
								</script>
							</div>
						</tr>
						<tr>
							<div id="Circle" class="text-left collapse">
								<script>
									for(var i=0;i<4;i++){
										document.write("<img src='../parts/circle"+(i+1)+".png' id='img"+nimg+"' onclick='check_circle("+(i+1)+")'>");
										nimg++;
									}
									document.write("<br>");
								</script>
							</div>
						</tr>
						<tr>
							<div id="Cubic" class="text-left collapse">
								<script>
									for(var i=0;i<7;i++){
										document.write("<img src='../parts/cubic"+(i+1)+".png' id='img"+nimg+"' onclick='check_cubic("+(i+1)+")'>");
										nimg++;
									}
									document.write("<br>");
								</script>
							</div>
						</tr>
						<tr>
							<div id="Flower" class="text-left collapse">
								<script>
									for(var i=0;i<15;i++){
										document.write("<img src='../parts/flower"+(i+1)+".png' id='img"+nimg+"' onclick='check_flower("+(i+1)+")'>");
										nimg++;
										line++;
										if(line%10==0)
											document.write("<br>");
									}
									document.write("<br>");
								</script>
							</div>
						</tr>
						<tr>
							<div id="Heart" class="text-left collapse">
								<script>
									for(var i=0;i<5;i++){
										document.write("<img src='../parts/heart"+(i+1)+".png' id='img"+nimg+"' onclick='check_heart("+(i+1)+")'>");
									}
									document.write("<br>");
								</script>
							</div>
						</tr>
					</table>
				</div>
            </div>
        </div>
        
        <form action="../ready/pay.jsp" method="POST" name="first">
	        <div class = "text-center">
	        	<input type="hidden" id="p_id_1" name="p_id_1" value="">
	          	<input type="hidden" name="c_id" value="<%= user%>">
	        	num : <select name="num" id="num">
						<option value="null">------선택------</option>
						<option value=1>1</option>
						<option value=2>2</option>
						<option value=3>3</option>
						<option value=4>4</option>
						<option value=5>5</option>
						<option value=6>6</option>
						<option value=7>7</option>
						<option value=8>8</option>
						<option value=9>9</option>
						<option value=10>10</option>
					</select>
	        </div>
	        <br><br>
			<div id="serve" class="text-center">
				<button onclick="buy()">구매하기</button>
			</div>
		</form>
		<script>			
			function buy(){
				document.form.submit();
			}
		</script>
		<br><br><br>
		<div class="footer">
		</div>
    </body>
</html>