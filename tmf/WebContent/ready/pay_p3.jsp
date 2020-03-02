<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ page import="java.text.SimpleDateFormat" %>
    <%@ page import="java.util.Date" %>
        <% request.setCharacterEncoding("euc-kr"); %>
            <%@ page import="util.Conn" %>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <link rel="stylesheet" href="pay.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <title>TMF ����â</title>
        <script>
            $(function () {
                $('#payment').tabs();
                $('#sendPayment').tabs();
            });
        </script>
        <style>
        button{
  			background:#3c3c3c;
  			color:white;
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
    </head>
    <body>
    <%
    Date today = new Date();
	String p_id_1=(String)request.getParameter("p_id_1");
	int ser_p_id=Integer.parseInt(p_id_1);
	String p_id_2=(String)request.getParameter("p_id_2");
	int ser_p_id2=Integer.parseInt(p_id_2);
	String p_id_3=(String)request.getParameter("p_id_3");
	int ser_p_id3=Integer.parseInt(p_id_3);
	String c_name=(String)request.getParameter("c_id");
	SimpleDateFormat date1 = new SimpleDateFormat("yyyy-MM-dd");
	String date = date1.format(today);
	String num=(String)request.getParameter("num");
	int in_num=Integer.parseInt(num);
	
	int result=0;
	int price1=0;
	int price2=0;
	int price3=0;
	Connection conn=null;
	PreparedStatement ps = null;
	ResultSet rs=null;
	try{
		conn=Conn.getConnection();
		String sql="select p_price from parts where p_id="+ser_p_id+"";
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			price1=rs.getInt(1);
			result += price1;
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		Conn.close(ps, conn);
	}
	
	try{
		conn=Conn.getConnection();
		String sql="select p_price from parts where p_id="+ser_p_id2+"";
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			price2=rs.getInt(1);
			result += price2;
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		Conn.close(ps, conn);
	}
	try{
		conn=Conn.getConnection();
		String sql="select p_price from parts where p_id="+ser_p_id3+"";
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			price3=rs.getInt(1);
			result += price3;
			result=result*in_num;
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		Conn.close(ps, conn);
	}
	
	int tel=0;
	try{
		conn=Conn.getConnection();
		String sql="select c_tel from customer where c_name='"+c_name+"'";
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			tel=rs.getInt(1);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		Conn.close(ps, conn);
	}
	
    %>
        <div class="wrapper">
            <header>
                <section class="sellerInfo">
                    <h1 class="sellerName">TooMuchFashion</h1>
                    <div class="sellerContacts">
                        <span class="sellerContact" id="sellerPhone">+821032774439</span>
                        <span class="sellerContact" id="sellerSite">
                            <a href="Readymade.html" target="_blank">TMF</a>
                        </span>
                        <span class="sellerContact" id="sellerMail">
                            <a href="jeanie5won1@gmail.com"
                               target="_blank">jeanie5won1@gmail.com</a>
                        </span>
                    </div>
                    <p class="companyInfo"><a href="#">Too Much Fashion</a></p>
                    <p class="reqs"><a href="#">�ڵ���̵� �Ͱ���</a></p>
                </section>
                <section class="sellerLogo">
                    <img src="logo.jpg" alt="seller logo" id="sellerImg" width="200" height="200">
                </section>
            </header>
            <hr>
            <main>
                <div id="payment">
                    <ul class="tabs" id="paymentDirection">
                        <li><a href="#sendPayment">Send Payment</a></li>
                        <li><a href="#requestPayment">Request Payment</a></li>
                    </ul>
                    <section class="payment" id="sendPayment">
                        <ul class="tabs" id="paymentSource">
                            <li><a href="#anyBank"><span class="credit-card"></span> �ſ�ī�� ��ȣ �Է��ϱ�</a></li>
                            <li><a href="#internetBank"><span class="desktop"></span> �ſ�ī�� ���� �Է��ϱ�</a></li>
                        </ul>
                        <section id="anyBank">
                            <form>
                                <div class="anyBank colLeft">
                                    <div class="cardImg">
                                        <div class="cardLogos">
                                            <img class="cardLogo" src="visa.png" alt="visa logo">
                                            <img class="cardLogo" src="maestro.png"
                                                 alt="maestro logo">
                                            <img class="cardLogo" src="Mastercard-logo.svg"
                                                 alt="mastercard logo">
                                        </div>
                                        <input class="cardInput" type="tel" placeholder="ī�� ��ȣ"
                                               id="cardNumber" minlength="16" maxlength="16" pattern="\d{16}"
                                               required>
                                        <input class="cardInput" type="text" placeholder="����/����" id="valid"
                                               minlength="5" maxlength="5" pattern="[01][1-9]/[1-3][0-9]"
                                               required>
                                        <input class="cardInput" type="tel" placeholder="CVC" id="cvc"
                                               minlength="3" maxlength="3" pattern="\d{3}" required></div>
                                </div>
                                <div class="anyBank colRight">
                                    <div class="formRow">
                                        <label class="infoLabel" for="cardSum">�ݾ�</label>
                                        <input type="number" class="infoInput" id="cardSum"
                                                min="1000" max="75000"
                                               required value="<%=result%>">
                                    </div>
                                    <div class="formRow">
                                        <label class="infoLabel" for="cardComment">���Ҹ��� �ۼ�</label>
                                        <input class="infoInput" type="text" id="cardComment"
                                               maxlength="150">
                                    </div>
                                    <div class="formRow">
                                        <label class="infoLabel" for="cardEmail">���ڸ��� �ۼ��ϱ�</label>
                                        <input class="infoInput" type="email" id="cardEmail" required>
                                    </div>
                                    <input type="submit" value="����" class="formButton" disabled>
                                    <input type="button" value="����" onclick="com()">
									<script>
										function com(){
											alert("�����Ϸ�!");
											location.href="../main.jsp";
										}
									</script>
                                </div>
                            </form>
                        </section>
                        <section id="internetBank">
                            ������ �ϰ� ���� ���࿡ ���ε� �Ͻʽÿ�.
                            <form>
                                <div class="formRow">
                                    <label class="inBankLabel" for="inBankFrom">������ ����</label>
                                    <input type="text" id="inBankFrom" class="bankInput" minlength="10" maxlength="12"
                                           pattern="\d{10,12}" value="<%=c_name %>" required>
                                </div>
                                <div class="formRow">
                                    <label class="inBankLabel" for="bankBik">BIC</label>
                                    <input type="text" id="bankBik" class="bankInput" minlength="9"
                                           maxlength="9" pattern="\d{9}" required>
                                </div>
                                <div class="formRow">
                                    <label class="inBankLabel" for="bankAccount">���¹�ȣ</label>
                                    <input type="text" id="bankAccount" class="bankInput" pattern="\d{20}"
                                           maxlength="20" required>
                                </div>
                                <div class="formRow">
                                    <label class="inBankLabel" for="bankGoal">�����Ϸ��� ����</label>
                                    <input type="text" placeholder="�Ͱ��� ����" id="bankGoal"
                                           class="bankInput" pattern=".*((�ΰ���ġ�� 18%)|(�ΰ���ġ�� 10%)|(�ΰ���ġ�� ����)).*"
                                           required>
                                </div>
                                <div class="formRow">
                                    <label class="inBankLabel" for="bankSum">�ݾ�</label>
                                    <input type="number" id="bankSum" value="<%=result %>"
                                           class="bankInput" min="1000" max="75000" required>
                                </div>
                                <div class="formRow">
                                    <input class="formButton" type="submit"
                                           value="�¶��� ��ŷ�� ���� ���� ��������" disabled>
                                </div>
                                <div class="formRow">
                                    <input class="formButton" type="reset" value="reset">
                                </div>
                            </form>
                        </section>
                    </section>
                    <section class="payment" id="requestPayment">
                      ������ �����ϰ� TMF�� ���� �¶��� ���࿡ �����մϴ�.
                        <form>
                            <div class="formRow">
                                <label class="reqLabel" for="reqTo">�޴� ����� IDN</label>
                                <input type="text" value="<%=c_name %>"
                                       class="reqPaymentInput" id="reqTo" minlength="10" maxlength="12"
                                       pattern="\d{10,12}" required>
                            </div>
                            <div class="formRow">
                                <label class="reqLabel" for="reqBik">BIC</label>
                                <input type="text" class="reqPaymentInput" id="reqBik" minlength="9"
                                       maxlength="9" pattern="\d{9}" required>
                            </div>
                            <div class="formRow">
                                <label class="reqLabel" for="reqAccount">���¹�ȣ</label>
                                <input type="text" class="reqPaymentInput" id="reqAccount" pattern="\d{20}"
                                       maxlength="20" required>
                            </div>
                            <div class="formRow">
                                <label class="reqLabel" for="reqGoal">�����Ϸ��� ����</label>
                                <input type="text" placeholder="�Ͱ��� ����" class="reqPaymentInput"
                                       id="reqGoal" pattern=".*((�ΰ���ġ�� 18%)|(�ΰ���ġ�� 10%)|(�ΰ���ġ�� ����)).*" required>
                            </div>
                            <div class="formRow">
                                <label class="reqLabel" for="reqSum">�ݾ�</label>
                                <input type="number" value="<%=result %>" class="reqPaymentInput"
                                       id="reqSum" min="1000" max="75000" required>
                            </div>
                            <div class="formRow">
                                <label class="reqLabel" for="reqPhone">��ȭ��ȣ</label>
                                <input type="tel" value="+82<%=tel %>" class="reqPaymentInput" id="reqPhone"
                                       maxlength="12" pattern="\+82\d{9}">
                            </div>
                            <div class="formRow">
                                <label class="reqLabel" for="reqMail">�̸���</label>
                                <input type="email" placeholder="���Ҿ˸�"
                                       class="reqPaymentInput" id="reqMail" required>
                            </div>
                            <div class="formRow">
                                <input class="formButton" type="submit" value="����" disabled>
                            </div>
                            <div class="formRow">
                                <input class="formButton" type="reset" value="reset">
                            </div>
                        </form>
                    </section>
                </div>
                <hr>
                <h2>TMF ȸ��Ұ�</h2>
                <section class="sellerGoods">
					<figure class="sellerGood"><a href="https://software.cbnu.ac.kr/include/subPage.php?pgID=ID12415887161#" target="_blank"><img src="aziz.jpg" class="goodImg"></a>
                        <figcaption class="goodCaption">Sponsor</figcaption>
                        <p class="goodPrice">Professor Aziz</p></figure>
					<figure class="sellerGood"><a href="https://www.instagram.com/only_0nni/" target="_blank"><img src="instagram.jpg" class="goodImg"></a>
                        <figcaption class="goodCaption">SNS</figcaption>
                        <p class="goodPrice">only_0nni shop</p></figure>

                </section>
            </main>
        </div>
        <form action="../custom/thirdCart.jsp" method="POST" name="order">
        <div class="text-center">
	        <input type="hidden" name="p_id_1" value="<%=p_id_1%>">
	        <input type="hidden" name="p_id_2" value="<%=p_id_2 %>">
	        <input type="hidden" name="p_id_3" value="<%=p_id_3 %>">
	        <input type="hidden" name="c_id" value="<%=c_name%>">
	        <input type="hidden" name="date" value="<%=date%>">
	        <input type="hidden" name="num" value="<%=num%>">
        </div>
        <br><br>
        <center>
	        <div class="text-center">
	        	<button onclick="order()">�����ϱ�</button>
	        </div>
        </center>
        </form>
    </body>
</html>