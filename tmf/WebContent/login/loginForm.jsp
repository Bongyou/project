<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	
		.footer{
	    	width:100%;
	    	height: 100px;
	    	background: black;
		}
		
		input[type=button],input[type=submit]{
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

			input[type=button]:hover,input[type=submit]:hover{
			  background:#fff;
			  color:#3c3c3c;
			}

			input[type=button]:before,input[type=button]:after,input[type=submit]:before,input[type=submit]:after{
			  content:'';
			  position:absolute;
			  top:0;
			  right:0;
			  height:2px;
			  width:0;
			  background: #3c3c3c;
			  transition:400ms ease all;
			}

			input[type=button]:after,input[type=submit]:after{
			  right:inherit;
			  top:inherit;
			  left:0;
			  bottom:0;
			}

			input[type=button]:hover:before,input[type=button]:hover:after,input[type=submit]:hover:before,input[type=submit]:hover:after{
			  width:100%;
			  transition:800ms ease all;
			}
	  </style>
	<script type="text/javascript">
		function loginChk(){
			var regx = /^[a-zA-Z0-9]*$/;
			var id = document.form.id.value;
			var pass = document.form.pass.value;
			if(id.length==0||id==null){
				alert("아이디를 입력하시오");
				document.form.id.focus();
				return;
			}
			if(!regx.test(id)){
				alert("아이디는 영어, 숫자만 입력가능합니다.");
				document.form.id.focus();
				return;
			}
			if(pass.length<6||pass==null){
				alert("정확한 비밀번호를 입력해주십시오.");
				document.form.pass.focus();
				return;
			}
			document.form.submit();
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
<li><a href="../custom/Choice_cus.jsp">HAND-MADE</a></li>
					<li><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
					<li><a href="#" id="current">ACCOUNT</a>
						<ul>
							<li><a href="loginForm.jsp">LOGIN</a></li>
							<li><a href="../member/regFormImpl.jsp">JOIN US</a></li>
						</ul>
		  			</li>
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
	<div class="container">
		<div class="text-center col-sm-6">
			멤버 로그인
			<br><br>
			<form action="loginProc.jsp" method="post" name="form">
				ID : <input type="text" size="10" maxlength="15" name="id" id="id">
				<br><br>
				PW : <input type="password" size="10" maxlength="15" name="pass" id="pass">
				<br><br>
				<a href="../Findidready.jsp">Find ID?</a>
				&nbsp;
				<a href="../Findpassready.jsp">Find PW?</a>
				<br><br>
				<input type="button" value="Login" onclick="loginChk()">
			</form>
		</div>
		<div class="text-center col-sm-6">
			<div>
				<p>New Member</p>
				<br>
				<p>아직</p>
				<p>TMF의 회원이</p>
				<p>아니시라면?</p>
			</div>
			<br>
			<form action="../member/regFormImpl.jsp">
				<input type="submit" value="Join">
			</form>
		</div>
	</div>
	<br><br><br><br>
	<footer></footer>
</body>
</html>