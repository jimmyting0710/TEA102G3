<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.member.model.*"%>

<%
	String m_id = session.getAttribute("loginId").toString();
    MemberService memSvc = new MemberService();
	MemberVO memberVO = memSvc.findOneMem(m_id);
    session.setAttribute("memberVO", memberVO);
%>
<jsp:useBean id="bankSvc" scope="page" class="com.bankcode.model.BankcodeService" />

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>我的帳戶</title>
<style>
.mybody {
	background-color: #E3F8F6;
}

.myform {
	border: 1px solid gray;
	background-color: rgb(243, 241, 241);
	width: 400px;
	height: 300px;
	text-align: center;
	margin: 20px auto;
}

.topcol {
	width: auto;
	height: 80px;
	background-color: #6CCFF3;
	margin: 0px 0px 20px 0px;
	font-size: 24px;
}

#inputEmail3 {
	width: 300px;
}

#inputPassword3 {
	width: 300px;
	margin-bottom: 5px;
}

.content {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 200px;
}

#icons {
	left: 0px;
}

#headimg {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	margin-right: 20px;
}

#pills-home-tab, #pills-profile-tab {
    text-align: center;
    margin: auto;
    position: relative;
    left: 140%;
    font-size: 24px;
    padding: 15px 150px;
}

.content {
	margin-top: 100px;
	margin-bottom: 200px;
}

#myfiles,#changepw{
    text-align:left;
    margin:auto;
    background-color: #e9e9e9;
    width:800px;
    height:900px;
    font-size:24px;
}
#changepw{
    height:300px;
}

#revise{
    background-color: #FFA000;
    width: 100px;
    border: 1px solid #707070;
    margin-left: 20px;
}


</style>

</head>

<body class="mybody">

	<div class="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>

	<div class="content">
	<div>
	     <jsp:include page="SelectBar.jsp"></jsp:include>
	</div>


<!-- --------------------------------------------------------------------------- -->
		

	
<!-- --------------------------------------------------------------------------- -->
</div>


	<div class="footer">
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>


</body>



</html>