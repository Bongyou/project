<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String User=(String)session.getAttribute("User"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>TMF BUY</title>
  <link rel="stylesheet" type="text/css" href="9.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div style="text-align:left;">
      	<br>
      	<div class="Readymade">
			Ready-made
			<br>
		</div>
      	<br>
      	<hr/>

  			<div class="menubar">
  				<ul>
<li><a href="../main.jsp">TMF</a></li>
<li><a href="../info.jsp">ABOUT</a></li>
<li><a href="../search.jsp">SEARCH</a></li>
<li><a href="../manager/magagement.jsp">MANAGEMENT</a></li>
<li><a href="newarrivals.jsp">NEW ARRIVALS</a></li>
<li><a href="best.jsp">BEST</a></li>
<li><a href="sale.jsp">SALE</a></li>
<li><a href="readymade.jsp">READY-MADE</a></li>
<li><a href="../custom/Choice_cus.jsp">HAND-MADE</a></li>
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
						<li><a href="#" id="current"><%= User%>��</a>
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
    <div class="one">
  	<div style="text-align:left;">
        <br><br><br><br>
      <img src="../image/�������������/1.jpg" alt="1" width="500" height="500"></img>
      <div class="detail">
          <h3>��ǰ������</h3><br><br>
          <p><b>Product Info</b></p>
          <p>��޽����� ť�� ���� �½��� �޾� ������ ��︮�� �Ͱ���</p>
                  <p><b>Exchange &amp; Refund</b></p><p>ȭ��� ���� ��ǰ�� �̼��� ���� ���̰� ���� �� ������ �������� ��ġ�� �ٸ� �� �ֽ��ϴ�.</p>
                    <p>�� ������ ��ȯ �� ȯ���� �Ұ��ϴ� �� �� ������ ���� ��Ź�帳�ϴ�.</p>        </div>
      <table class="type03">
<caption> �⺻ ����</caption>
                    <tbody>
<tr>
<th scope="row"><span>��ǰ��</span></th>
                            <td><span>������������� �Ͱ���</span></td>
                        </tr>
<tr>
<th scope="row"><span style="font-size:14px;color:#e51623;font-weight:bold;">�ǸŰ�</span></th>
                            <td><span style="font-size:14px;color:#e51623;font-weight:bold;"><strong id="span_product_price_text">11,000�� </strong><input id="product_price" name="product_price" value="" type="hidden"  /></span></td>
                        </tr>
<tr>
<th scope="row"><span style="font-size:12px;color:#474747;">��ۺ�</span></th>
                            <td><span style="font-size:12px;color:#474747;"><span class="delv_price_B"><input id="delivery_cost_prepaid" name="delivery_cost_prepaid" value=" " type="hidden"  /><strong>2,500��</strong> (50,000�� �̻� ���� �� ����)</span><div class="delv_price_C" style="display:none">�ؿܹ�ۺ�</div></span></td>
                        </tr>
</tbody>
</table>
<table class="type01">
<caption>SNS ��ǰȫ��</caption>
                <tbody><tr>
<th scope="row">SNS ��ǰȫ��</th>
                        <td class="social"><a href="https://www.instagram.com/only_0nni/" target="_blank"><img src="instagram.jpg"  alt="instagram" width="40" height="40" /></a>
</td>
                    </tr></tbody>
</table>
<table class="type02">
<caption>��ǰ �ɼ�</caption>
<tbody>
	<tr>
              <th scope="row">����</th>
<td><select option_product_no="1317" option_select_element="ec-option-select-finder" option_sort_no="1" option_type="T" item_listing_type="S" option_title="����" product_option_area="product_option_1317_0" name="option1" id="product_option_id1" class="ProductOption0" option_style="select" required="true" ><option value="*"  link_image="">
  - [�ʼ�] ���� ���� -</option><option value="**"  link_image="">-------------------</option><option value="���[������1��]"  link_image="">���[������1��]</option><option value="�ǹ�"  link_image="">�ǹ�</option><option value="��ũ(NEW)"  link_image="">��ũ(NEW)</option></select><p class="value"></p>
</td>
</tr>
	<tr>
<th scope="row">�ɼ�</th>
<td><select option_product_no="1317" option_select_element="ec-option-select-finder" option_sort_no="2" option_type="T" item_listing_type="S" option_title="�ɼ�" product_option_area="product_option_1317_0" name="option2" id="product_option_id2" class="ProductOption0" option_style="select" required="true" ><option value="*"  link_image="">
  - [�ʼ�] �ɼ� ���� -</option><option value="**"  link_image="">-------------------</option><option value="�Ͱ���" disabled="disabled" link_image="">�Ͱ���</option><option value="����" disabled="disabled" link_image="">����</option></select><p class="value"></p>
</td>
</tr>
<tr>
							<th scope="row">����</th>
							<td>
								<input type="button" value=+ onclick="plus()" style="height:20px; background-color:white; font-size:20px; border:none;"><input type="text" id="num" value="0" style="width:30px; height:20px; border:1px solid black;"><input type="button" onclick="minus()" value="-" style="height:25px; background-color:white; font-size:25px; border:none;">
								<script>
									var number=0;
                  function plus(){
                     number++;
                     document.getElementById("num").value = number;
                     var n1=document.getElementById("nm1");
                     var n2=document.getElementById("nm2");
                     n1.value=number;
                     n2.value=number;
                  }
                  function minus(){
                     number--;
                     document.getElementById("num").value = number;
                     var n1=document.getElementById("nm1");
                     var n2=document.getElementById("nm2");
                     n1.value=number;
                     n2.value=number;
                  }
                  </script>
							</td>
						</tr>
</tbody>
</table>
<br><br>
<form action="cart.jsp" method="POST">
					<input type="hidden" name="e_name" value="�������������">
					<input type="hidden" name="c_name" value="<%=User %>">
					<input type="hidden" id="nm1" name="nm1">
					<center>
					<button class="btn btn-warning" onclick="cart()">��ٱ���</button>
					</center>
				</form>
				<br><br>
				<form action="pay_ear.jsp" method="POST">
					<input type="hidden" name="e_name" value="�������������">
					<input type="hidden" name="c_name" value="<%=User %>">
					<input type="hidden" id="nm2" name="nm2">
					<center>
					<button class="btn btn-success" onclick="order()">�����ϱ�</button>
					</center>
				</form>
				<br><br><br><br>
				<script type="text/javascript">
					function cart(){				
						document.form.submit();
					}
					function order(){
						document.form.submit();
					}
				</script>
			</div>
		</div>
</body>
</html>