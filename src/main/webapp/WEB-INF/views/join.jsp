<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>

<%@ include file="include/header.jsp" %>

	<table>
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>


	<form action="joinOk" method="post" name="reg_frm">
	<div class="wrapper_join">
		<h1>회원가입</h1>
		<div class="id">
			<img src="<c:url value="/resources/img/user.png" />">&nbsp;
            <input type="text" id="email" placeholder="아이디" name="id"><br>
		</div>
		<div class="password">
			<img src="<c:url value="/resources/img/pass.png" />">&nbsp;
			<input type="password" id="password" placeholder="비밀번호" name="pw"><br><br>

			<img src="<c:url value="/resources/img/pass.png" />">&nbsp;
			<input type="password" id="password" placeholder="비밀번호 확인" name="pw_check"><br><br>
			<img src="<c:url value="/resources/img/user.png" />">&nbsp;
			<input type="text" id="password" placeholder="이름" name="name"><br><br>
			<img src="<c:url value="/resources/img/phone.png" />">&nbsp;
			<input type="text" id="password" placeholder="전화번호" name="phone"><br><br>
		</div>
		<div class="div_button">
			<input id="button" type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;
			<input id="button" type="button" value="로그인" onclick="javascript:window.location='login'">
		</div>
	</div>
	</form>	
        
        
	<table class="mtable">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>

<%@ include file="include/footer.jsp" %>

</body>
</html>