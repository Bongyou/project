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
display:none; /* ���ÿ��� ����޴��� �Ⱥ��̰� �ϱ� */
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
display:block; /* ���콺 Ŀ�� �ø��� ����޴� ���̰� �ϱ� */
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
  <li><a href="#" id="current"><%= User%>��</a>
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
    ����� ���Ÿ� �ѳ���� �پ��� ��ȭ�� �� ��Ʈ��
    ������ ���п��� ���ؼ� �� Ƽ�������� ��Ư��
    ��ǰ�� ����� �� �������� �������� ��̷ο�
    �����ϰ� ��Ʈ �ִ� ���带 �����Ͽ� ����������
    �ϰ� ǥ���˴ϴ�. �������� �Ƿ翧�� ��ä,
    �ܼ����� �پ缺�� ����, Ƽ������ Ư���� ������
    ����� ǥ���� �������� �� ���� ����ִ� ���丮��
    �Բ� ��ſ��� �����ϸ� �׻� ���ο� Ʈ���带
    �����մϴ�.
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
     ��ȭ��ȣ : 042-483-4094
     �ּ� : û�ֽ� ������ ����1 �п��� 308
     �Ͱ��� ���� ��� : @only_0nni
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