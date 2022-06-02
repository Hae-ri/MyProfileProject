<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## 진료 예약 ##</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
</head>
<body>
	<%@ include file="include/header.jsp" %>

<table class="mtable">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>


	<form action="loginOk" method="post">
	 <div class="wrapper_login">
            <h1>로그인</h1>
            <div class="id">
                <img src="<c:url value="/resources/img/user.png" />">&nbsp;
                <input type="text" id="email" placeholder="아이디" name="id"><br>
            </div>
            <div class="password">
               <img src="<c:url value="/resources/img/pass.png" />">&nbsp;
                <input type="password" id="password" placeholder="비밀번호" name="pw"><br><br>
            </div>
            <div class="div_button">
				<input id="button" type="submit" value="로그인" >&nbsp;&nbsp;&nbsp;&nbsp;
				<input id="button" type="button" value="회원가입" onclick="javascript:window.location='join'">

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