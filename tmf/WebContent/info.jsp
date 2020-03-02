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

.wrapper{
  width:100%;
}
.wrapper p{
  font-size:17px;
}

.back{
  width: 100%;
  margin-top:4%;
  z-index:0;
  margin-bottom:18%;
  position: relative;
}

.about{
  width: 500px;
  height: 650px;
  background:  rgba(255, 30,70,0.7);
  z-index:100;
  top:17%;
  left:20%;;
  position: absolute;
}

.about h2{
  color:white;
  font-size: 35px;
  font-weight: bold;
  margin-top: 55px;
  margin-left:50px;
}
.about p{
  color:black;
  letter-spacing: 5px;
  margin-bottom:50px;
  margin-left:50px;
}
.about pre{

color:white;
font-size: 13px;
margin-bottom:20px;
margin-left:15px;
}

#map{
  width: 1200px;
  height: 900px;
  margin-bottom:15%;
  margin-top:1%;
}

div.footer {
  margin-bottom: auto;
  width: 100%;
  height: 100%;
  background-color:#F7819F;
  text-align: right;
  font-family: Arial, Helvetica, sans-serif;
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
     <li><a href="login/loginForm.jsp">LOGIN</a></li>
     <li><a href="member/regFormImpl.jsp">JOIN US</a></li>
   </ul>
  </li>
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
								location.href="login/logoutProc.jsp";
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


<div class="wrapper">
	<div class="back">
  		<img src="image/ab.jpg">
		<div class="about">
  			<h2>ABOUT</h2>
			<p>TOOMUCHFXXXXXX</p>
    <pre>
    현대와 과거를 넘나드는 다양한 문화의 팝 아트와
    리얼리즘 미학에서 재해석 된 티엠에프의 독특한
    제품은 웨어러블 한 아이템을 바탕으로 흥미로운
    디테일과 위트 있는 무드를 결합하여 컨템포러리
    하게 표현됩니다. 직관적인 실루엣과 색채,
    단순성과 다양성의 균형, 티엠에프 특유의 섬세한
    기술로 표현된 오브제는 매 시즌 재미있는 스토리와
    함께 즐거움을 선사하며 항상 새로운 트렌드를
    제안합니다.
  </pre>

  <pre>
    Wearable items, which are uniquely reinterpreted
    in Pop Art and aesthetic of realism that covers
    modern and contemporary history, are combined
    with interesting details and with to be expressed
    contemporary. TMF always offers a new trend every
    season with object expressed in intuitive silhouette
    and color, balance between simplicity and versatility,
    and unique sophisticated techniques plus entertaining
    story that brings delight.
  </pre>
		</div>
	</div>

<center>
<div id="map">
</div>
</center>

<div class="footer">
    <pre>
    &nbsp;
     전화번호 : 042-483-4094
     주소 : 청주시 서원구 충대로1 학연산 308
     귀걸이 만든 사람 : @only_0nni
    &nbsp;<br>
  </pre> 
  </div>

<script>
function myMap() {
  var mapCanvas = document.getElementById("map");
  var myCenter = new google.maps.LatLng(36.6261871,127.4560161);
  var mapOptions = {
  	center: myCenter,
    zoom: 16
  };
  var map = new google.maps.Map(mapCanvas, mapOptions);

  var icon = {
    url: "image/marker.png", // url
    scaledSize: new google.maps.Size(50, 50), // scaled size
    origin: new google.maps.Point(0,0), // origin
    anchor: new google.maps.Point(0, 0) // anchor
};

  var marker = new google.maps.Marker({
  	position:myCenter,
    animation:google.maps.Animation.BOUNCE,
  	icon: icon
    });
    marker.setMap(map);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD5Py3ff6EDBbXmR8Xude9m5ySEz0Wzmg0&callback=myMap"></script>
</div>
</body>
</html>