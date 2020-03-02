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
					alert("���̵� �Է��Ͻʽÿ�");
					return false;
				}
				
				if(!regx.test(c_id)){
					alert("���̵�� ����, ���ڸ� �Է°����մϴ�.");
					document.form.id.focus();
					return false;
				}
				
				if(c_pw==null||c_pw.length==0){
					alert("��й�ȣ�� �Է��Ͻʽÿ�(6�����̻�)");
				}
				
				if(chk1.test(c_pw)&&chk2.test(c_pw)){}
				else{
					alert("��й�ȣ�� ����, ���� �����Դϴ�.");
					return false;
				}
				
				if(right==0){
					alert("��й�ȣ�� �������� Ȯ���Ͻÿ�");
					return false;
				}
				
				if(c_name==null||c_name.length==0){
					alert("�̸��� �Է��Ͻÿ�");
					return false;
				}
				
				if(c_tel==null||c_tel.length==0||c_tel.length<11){
					alert("�ڵ��� ��ȣ�� �Է��Ͻÿ�");
					return false;
				}
				if(!num_regx.test(c_tel)){
					alert("�ڵ�����ȣ�� ���ڸ� �Է°����մϴ�.");
					return false;
				}
				
				if(dodo==null||dodo.length==0){
					alert("���� �����Ͻÿ�");
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
					document.form.chk.value="��й�ȣ�� �Է��Ͻÿ�";
					right=0;
				}
				else if(c_pw != c_pw2){
					document.form.chk.value="��й�ȣ�� �ٸ��ϴ�.";
					right=0;
				}
				else if(c_pw2.length<6){
					document.form.chk.value="��й�ȣ�� 6���̻��̾�� �մϴ�.";
					right=0;
				}
				else if(c_pw==c_pw2&&c_pw.length>=6){
					document.form.chk.value="��й�ȣ�� �����մϴ�.";
					right=1;
				}
				return;
			}

			function idCheck(){
				var c_id=document.form.c_id.value;
				if(c_id.length<1||c_id==null){
					alert("�ߺ�üũ�� ���̵� �Է��Ͻÿ�");
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
				���������Է�
				<br>
				<br>
				ID : <input type="text" size="10" maxlength="15" name="c_id">
				&nbsp;
				<input type="button" onclick="idCheck()" align="middle" value="�ߺ�üũ">
				<br><br>
				PW : <input type="password" size="15" maxlength="20" name="c_pw"><br><br>
				PW Ȯ�� : <input type="password" size="15" maxlength="20" name="c_pw2" onblur="passCheck()">&nbsp;
				<input type="text" style="border-width:0px" size="30" name="chk" value="��й�ȣ�� �Է��ϼ���" readonly="readonly" class="dag">
				<br><br>
				Name : <input type="text" size="13" maxlength="12" name="c_name"><br><br>
				Phone : <input type="text" name="c_tel" size="12" maxlength="11">
				<br><br>
				Birth : <input type="date" name="birth" max="2005-12-31">
				<br/>
				<br/>
				Address :
				<select name="dodo" id="dodo" onchange="select_si()" value=null>
					<option value="null">------����------</option>
					<option value="����">����</option>
					<option value="��⵵">��⵵</option>
					<option value="������">������</option>
					<option value="��û�ϵ�">��û�ϵ�</option>
					<option value="��û����">��û����</option>
					<option value="���ϵ�">���ϵ�</option>
					<option value="����ϵ�">����ϵ�</option>
					<option value="��󳲵�">��󳲵�</option>
					<option value="��������">���󳲵�</option>
					<option value="����Ư����ġ��">����Ư����ġ��</option>
				</select> &nbsp;&nbsp;
				<select name="si" id="si">
					<option value="null">------����------</option>
				</select>
				<script>
					function select_si(){
						var sel = document.getElementById("dodo").value;
						
						var si = document.getElementById("si");
						
						if(sel=="����"){
							var arr = new Array();
							arr = ["����Ư����","��õ������","����Ư����ġ��","����������","�뱸������","��걤����","�λ걤����","���ֱ�����"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="��⵵"){
							var arr = new Array();
							arr = ["������ ��ȱ�","������ �Ǽ���","������ �ȴޱ�","������ ���뱸","���� ���籸","���� �ϻ굿��","���� �ϻ꼭��",
								"������ ������","������ �߿���","������ �д籸","���ν� ó�α�","���ν� ���ﱸ","���ν� ������","��õ��",
								"�Ȼ��  ��ϱ�","�Ȼ�� �ܿ���","�����ֽ�","�Ⱦ�� ���ȱ�","�Ⱦ�� ���ȱ�","ȭ����","���ý�","�����ν�","�����","���ֽ�",
								"������","�����","���ֽ�","������","�����","��õ��","���ֽ�","�ȼ���","������","��õ��","�ǿս�","�ϳ���",
								"���ֽ�","����","����õ��","��õ��","����","��õ��"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="������"){
							var arr = new Array();
							arr = ["��õ��","���ֽ�","������","���ؽ�","�¹��","���ʽ�","��ô��",
								"ȫõ��","Ⱦ����","������","��â��","������","ö����","ȭõ��","�籸��","������",
								"����","��籺"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="��û�ϵ�"){
							var arr = new Array();
							arr = ["û�ֽ� ��籸","û�ֽ� ������","û�ֽ� �����","û�ֽ� û����","���ֽ�","��õ��",
								"������","��õ��","������","����","��õ��","���걺","������","�ܾ籺"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="��û����"){
							var arr = new Array();
							arr = ["õ�Ƚ� ������","õ�Ƚ� ���ϱ�","���ֽ�","���ɽ�","�ƻ��","�����","����","����",
								"������","�ݻ걺","�ο���","��õ��","û�籺","ȫ����","���걺","�¾ȱ�"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="����ϵ�"){
							var arr = new Array();
							arr = ["���ֽ� �ϻ걸","���ֽ� ������","�����","�ͻ��","������","������","������",
								"���ֱ�","���ȱ�","���ֱ�","�����","�ӽǱ�","��â��","��â��","�ξȱ�"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="���󳲵�"){
							var arr = new Array();
							arr = ["������","������","��õ��","���ֽ�","�����","��籺","���","���ʱ�",
								"���ﱺ","������","ȭ����","���ﱺ","������","�س���","���ϱ�","���ȱ�",
								"����","������","�强��","�ϵ���","������","�žȱ�"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="���ϵ�"){
							var arr = new Array();
							arr = ["���׽� ����","���׽� �ϱ�","���ֽ�","��õ��","�ȵ���","���̽�","���ֽ�",
								"��õ��","���ֽ�","�����","����","������","�Ǽ���","û�۱�","���籺","������",
								"û����","��ɱ�","���ֱ�","ĥ�","��õ��","��ȭ��","������","�︪��"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="��󳲵�"){
							var arr = new Array();
							arr = ["â���� ��â��","â���� ���걸","â���� ����������","â���� ����ȸ����","â���� ���ر�",
								"���ֽ�","�뿵��","��õ��","���ؽ�","�о��","������","����","�Ƿɱ�","�Ծȱ�","â�ⱺ",
								"����","���ر�","�ϵ���","��û��","�Ծ籺","��â��","��õ��"];
							for(i=0;i<arr.length;i++){
								var option = document.createElement("option");
								option.text=arr[i];
								option.value=arr[i];
								si.add(option);
							}
						}
						else if(sel=="����Ư����ġ��"){
							var arr = new Array();
							arr = ["���ֽ�","��������"];
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
				<input type="button" value="���Խ�û" onclick="regCheck()">&nbsp;
				<input type="reset" value="�ٽ��Է�">&nbsp;
				<input type="button" value="���" onclick="regCancle()">
			</div>
		</form>
	</body>
</html>