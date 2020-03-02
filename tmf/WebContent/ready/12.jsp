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
    <div class="one">
  	<div style="text-align:left;">
        <br><br><br><br>
      <img src="../image/블루지르콘진주/1.jpg" alt="1" width="500" height="500"></img>
      <div class="detail">
          <h3>상품상세정보</h3><br><br>
          <p><b>Product Info</b></p>
          <p>고급스러운 큐빅에 진주 태슬을 달아 가을과 어울리는 귀걸이</p>
                  <p><b>Exchange &amp; Refund</b></p><p>화면과 실제 상품에 미세한 색상 차이가 있을 수 있으며 디자인의 위치가 다를 수 있습니다.</p>
                    <p>위 사항은 교환 및 환불이 불가하니 이 점 유의해 구매 부탁드립니다.</p>        </div>
      <table class="type03">
<caption> 기본 정보</caption>
                    <tbody>
<tr>
<th scope="row"><span>상품명</span></th>
                            <td><span>블루지르콘진주 귀걸이</span></td>
                        </tr>
<tr>
<th scope="row"><span style="font-size:14px;color:#e51623;font-weight:bold;">판매가</span></th>
                            <td><span style="font-size:14px;color:#e51623;font-weight:bold;"><strong id="span_product_price_text">11,000원 </strong><input id="product_price" name="product_price" value="" type="hidden"  /></span></td>
                        </tr>
<tr>
<th scope="row"><span style="font-size:12px;color:#474747;">배송비</span></th>
                            <td><span style="font-size:12px;color:#474747;"><span class="delv_price_B"><input id="delivery_cost_prepaid" name="delivery_cost_prepaid" value=" " type="hidden"  /><strong>2,500원</strong> (50,000원 이상 구매 시 무료)</span><div class="delv_price_C" style="display:none">해외배송비</div></span></td>
                        </tr>
</tbody>
</table>
<table class="type01">
<caption>SNS 상품홍보</caption>
                <tbody><tr>
<th scope="row">SNS 상품홍보</th>
                        <td class="social"><a href="https://www.instagram.com/only_0nni/" target="_blank"><img src="instagram.jpg"  alt="instagram" width="40" height="40" /></a>
</td>
                    </tr></tbody>
</table>
<table class="type02">
<caption>상품 옵션</caption>
<tbody>
	<tr>
              <th scope="row">색상</th>
<td><select option_product_no="1317" option_select_element="ec-option-select-finder" option_sort_no="1" option_type="T" item_listing_type="S" option_title="색상" product_option_area="product_option_1317_0" name="option1" id="product_option_id1" class="ProductOption0" option_style="select" required="true" ><option value="*"  link_image="">
  - [필수] 색상 선택 -</option><option value="**"  link_image="">-------------------</option><option value="골드[구매율1위]"  link_image="">골드[구매율1위]</option><option value="실버"  link_image="">실버</option><option value="핑크(NEW)"  link_image="">핑크(NEW)</option></select><p class="value"></p>
</td>
</tr>
	<tr>
<th scope="row">옵션</th>
<td><select option_product_no="1317" option_select_element="ec-option-select-finder" option_sort_no="2" option_type="T" item_listing_type="S" option_title="옵션" product_option_area="product_option_1317_0" name="option2" id="product_option_id2" class="ProductOption0" option_style="select" required="true" ><option value="*"  link_image="">
  - [필수] 옵션 선택 -</option><option value="**"  link_image="">-------------------</option><option value="귀걸이" disabled="disabled" link_image="">귀걸이</option><option value="귀찌" disabled="disabled" link_image="">귀찌</option></select><p class="value"></p>
</td>
</tr>
<tr>
							<th scope="row">개수</th>
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
					<input type="hidden" name="e_name" value="블루지르콘진주">
					<input type="hidden" name="c_name" value="<%=User %>">
					<input type="hidden" id="nm1" name="nm1">
					<center>
					<button class="btn btn-warning" onclick="cart()">장바구니</button>
					</center>
				</form>
				<br><br>
				<form action="pay_ear.jsp" method="POST">
					<input type="hidden" name="e_name" value="블루지르콘진주">
					<input type="hidden" name="c_name" value="<%=User %>">
					<input type="hidden" id="nm2" name="nm2">
					<center>
					<button class="btn btn-success" onclick="order()">결제하기</button>
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