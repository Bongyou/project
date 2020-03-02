<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
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

			.footer{
				width:100%;
				height: 100px;
				background: black;
			}

			input[type=button],input[type=reset]{
				background:#3c3c3c;
				color:#fff;
				border:none;
				position:relative;
				height:40px;
				font-size:15px;
				padding-top: 15px;
				padding-left: 20px;
				padding-bottom: 20px;
				padding-right: 20px;
				cursor:pointer;
				transition:800ms ease all;
				outline:none;
			}

			#pa input[type=button]{
				font-size:10px;
				padding-top:2px;
				padding-left:5px;
				padding-right:5px;
				padding-bottom:2px;
			}

			input[type=button]:hover,input[type=reset]:hover{
				background:#fff;
				color:#3c3c3c;
			}

			input[type=button]:before,input[type=button]:after,input[type=reset]:before,input[type=reset]:after{
				content:'';
				position:absolute;
				top:0;
				right:0;
				height:2px;
				width:0;
				background: #3c3c3c;
				transition:400ms ease all;
			}

			input[type=button]:after,input[type=reset]:after{
				right:inherit;
				top:inherit;
				left:0;
				bottom:0;
			}

			input[type=button]:hover:before,input[type=button]:hover:after,input[type=reset]:hover:before,input[type=reset]:hover:after{
				width:100%;
				transition:800ms ease all;
			}

			.dag{
				color:red;
			}
			input[type="date"] {
				background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
			}
			input[type="date"]::-webkit-inner-spin-button {
				display: none;
			}
			input[type="date"]::-webkit-calendar-picker-indicator {
				opacity: 0;
			}
		</style>
		<script type="text/javascript">
			var right=0;
			function regCheck(){
				var c_id=document.form.c_id.value;
				var regx=/^[a-zA-Z0-9]*$/;
				var chk1=/\d/;
				var chk2=/[a-z]/i;
				var num_regx=/^[0-9]*$/;
				var c_pw=document.form.c_pw.value;
				var c_name=document.form.c_name.value;
				var c_tel=document.form.c_tel.value;
				var dodo=document.form.dodo.value;

				if(c_id.length==0||c_id==null){
					alert("아이디를 입력하십시오");
					return false;
				}
				
				if(!regx.test(c_id)){
					alert("아이디는 영어, 숫자만 입력가능합니다.");
					document.form.id.focus();
					return false;
				}
				
				if(c_pw==null||c_pw.length==0){
					alert("비밀번호를 입력하십시오(6글자이상)");
				}
				
				if(chk1.test(c_pw)&&chk2.test(c_pw)){}
				else{
					alert("비밀번호를 영어, 숫자 조합입니다.");
					return false;
				}
				
				if(right==0){
					alert("비밀번호가 동일한지 확인하시오");
					return false;
				}
				
				if(c_name==null||c_name.length==0){
					alert("이름을 입력하시오");
					return false;
				}
				
				if(c_tel==null||c_tel.length==0||c_tel.length<11){
					alert("핸드폰 번호를 입력하시오");
					return false;
				}
				if(!num_regx.test(c_tel)){
					alert("핸드폰번호는 숫자만 입력가능합니다.");
					return false;
				}
				
				if(dodo==null||dodo.length==0){
					alert("도를 선택하시오");
					return false;
				}
				
				document.form.submit();
			}

			function regCancle(){
				location="../login/login.html";
			}

			function passCheck(){
				var c_pw=document.form.c_pw.value;
				var c_pw2=document.form.c_pw2.value;

				if(c_pw2.length==0||c_pw==null){
					document.form.chk.value="비밀번호를 입력하시오";
					right=0;
				}
				else if(c_pw != c_pw2){
					document.form.chk.value="비밀번호가 다릅니다.";
					right=0;
				}
				else if(c_pw2.length<6){
					document.form.chk.value="비밀번호는 6자이상이어야 합니다.";
					right=0;
				}
				else if(c_pw==c_pw2&&c_pw.length>=6){
					document.form.chk.value="비밀번호가 동일합니다.";
					right=1;
				}
				return;
			}

			function idCheck(){
				var c_id=document.form.c_id.value;
				if(c_id.length<1||c_id==null){
					alert("중복체크할 아이디를 입력하시오");
					return false;
				}
				var url="idCheck.jsp?id="+c_id;
				window.open(url,"get","height=180,width=300");
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
								<li><a href="../login/loginForm.jsp">LOGIN</a></li>
								<li><a href="regFormImpl.jsp">JOIN US</a></li>
							</ul>
						</li>
					</ul>
			  </div>
		</div>
		<br><br><br><br><br><br>
		<form action="regFormProc.jsp" name="form" method="post">
			<p id="pa" style="padding-left:620px">
				개인정보입력
				<br>
				<br>
				ID : <input type="text" size="10" maxlength="15" name="c_id">
				&nbsp;
				<input type="button" onclick="idCheck()" align="middle" value="중복체크">
				<br><br>
				PW : <input type="password" size="15" maxlength="20" name="c_pw"><br><br>
				PW 확인 : <input type="password" size="15" maxlength="20" name="c_pw2" onblur="passCheck()">&nbsp;
				<input type="text" style="border-width:0px" size="30" name="chk" value="비밀번호를 입력하세요" readonly="readonly" class="dag">
				<br><br>
				Name : <input type="text" size="13" maxlength="12" name="c_name"><br><br>
				Phone : <input type="text" name="c_tel" size="12" maxlength="11">
				<br><br>
				Birth : <input type="date" name="birth" max="2005-12-31">
				<br/>
				<br/>
				Address :
				<select name="dodo" id="dodo" onchange="select_si()" value=null>
					<option value="null">------선택------</option>
					<option value="없음">없음</option>
					<option value="경기도">경기도</option>
					<option value="강원도">강원도</option>
					<option value="충청북도">충청북도</option>
					<option value="충청남도">충청남도</option>
					<option value="경상북도">경상북도</option>
					<option value="전라북도">전라북도</option>
					<option value="경상남도">경상남도</option>
					<option value="전리남도">전라남도</option>
					<option value="제주특별자치도">제주특별자치도</option>
				</select> &nbsp;&nbsp;
				<select name="si" id="si">
					<option value="null">------선택------</option>
				</select>
				<script>
					function select_si(){
						var sel = document.getElementById("dodo").value;
						
						var si = document.getElementById("si");
						
						if(sel=="없음"){
							var arr = new Array();
							arr = ["서울특별시","인천광역시","세종특별자치시","대전광역시","대구광역시","울산광역시","부산광역시","광주광역시"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="경기도"){
							var arr = new Array();
							arr = ["수원시 장안구","수원시 권선구","수원시 팔달구","수원시 영통구","고양시 덕양구","고양시 일산동구","고양시 일산서구",
								"성남시 수정구","성남시 중원구","성남시 분당구","용인시 처인구","용인시 기흥구","용인시 수지구","부천시",
								"안산시  상록구","안산시 단원구","남양주시","안양시 만안구","안양시 동안구","화성시","평택시","의정부시","시흥시","파주시",
								"김포시","광명시","광주시","군포시","오산시","이천시","양주시","안성시","구리시","포천시","의왕시","하남시",
								"여주시","양평군","동두천시","과천시","가평군","연천군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="강원도"){
							var arr = new Array();
							arr = ["춘천시","원주시","강릉시","동해시","태백시","속초시","삼척시",
								"홍천군","횡성군","영원군","평창군","정선군","철원군","화천군","양구군","인제군",
								"고성군","양양군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="충청북도"){
							var arr = new Array();
							arr = ["청주시 상당구","청주시 서원구","청주시 흥덕구","청주시 청원구","충주시","제천시",
								"보은군","옥천군","영동군","증평군","진천군","괴산군","음성군","단양군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="충청남도"){
							var arr = new Array();
							arr = ["천안시 동남구","천안시 서북구","공주시","보령시","아산시","서산시","논산시","계룡시",
								"당진시","금산군","부여군","서천군","청양군","홍성군","예산군","태안군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="전라북도"){
							var arr = new Array();
							arr = ["전주시 완산구","전주시 덕진구","군산시","익산시","정읍시","남원시","김제시",
								"완주군","진안군","무주군","장수군","임실군","순창군","고창군","부안군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="전라남도"){
							var arr = new Array();
							arr = ["목포시","여수시","순천시","나주시","광양시","담양군","곡성군","구례군",
								"고흥군","보성군","화순군","장흥군","강진군","해남군","영암군","무안군",
								"함평군","영광군","장성군","완도군","진도군","신안군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="경상북도"){
							var arr = new Array();
							arr = ["포항시 남구","포항시 북구","경주시","김천시","안동시","구미시","영주시",
								"영천시","상주시","문경시","경산시","군위군","의성군","청송군","영양군","영덕군",
								"청도군","고령군","성주군","칠곡군","예천군","봉화군","울진군","울릉군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="경상남도"){
							var arr = new Array();
							arr = ["창원시 의창구","창원시 성산구","창원시 마산합포구","창원시 마산회원구","창원시 진해구",
								"진주시","통영시","사천시","김해시","밀양시","거제시","양산시","의령군","함안군","창년군",
								"고성군","남해군","하동군","산청군","함양군","거창군","합천군"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="제주특별자치도"){
							var arr = new Array();
							arr = ["제주시","서귀포시"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
					}
				</script>
				<br><br>
				<input type="text" name="detail" size="80" maxlength="100">
				<br>
			</p>
			<br><br>
			<div class="text-center">
				<input type="button" value="가입신청" onclick="regCheck()">&nbsp;
				<input type="reset" value="다시입력">&nbsp;
				<input type="button" value="취소" onclick="regCancle()">
			</div>
		</form>
	</body>
</html>