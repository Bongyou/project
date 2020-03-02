<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String User=(String)session.getAttribute("User"); %>
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

  <style>
  /* Make the image fully responsive */
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

.mypage{
  width:75%;
  margin-top: 12%;

}

.search{
border-top: 1px solid gray;
padding-top:3%;
padding-bottom: 1%;
}

.search input[type="text"]{
  width:50%;
  outline:none;
}

.search button{
  border:none;
  background-color:white;
  width:10px;
}
.search img{
  width:30px;
}

.status{
  border-top: 1px solid gray;
  border-bottom: 1px solid gray;
  padding-top:2%;
  padding-bottom:2%;
}

.footer{
  width: 100%;
  background-color: black;
  height: 150px;
}
  </style>
  
  
</head>
<body>
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
<%
  						if(User==null){
  					%>
  					<li><a href="#" id="current">ACCOUNT</a>
  						<ul>
     						<li><a href="../login/loginForm.jsp">LOGIN</a></li>
     						<li><a href="../member/regFormImpl.jsp">JOIN US</a></li>
    					</ul>
					</li>
					<%
  						}
  						else{
					%>
						<li><a href="#" id="current"><%= User%>님</a>
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

  <center>
<div class="mypage">
    <p>Search</P>
    <form action="sear_action.jsp" method="POST" name="search">
	<div class="search">
		<input type ="text" placeholder="귀걸이 이름" id="keyword" name="keyword">
		<button type="submit"><img src="../image/search.jpg"></button>
	</div>
	</form>
</div>

</center>
</body>
</html>