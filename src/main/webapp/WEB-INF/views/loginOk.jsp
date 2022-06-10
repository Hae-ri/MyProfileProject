<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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


	<%
		int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
		int checkPw = Integer.parseInt(request.getAttribute("checkPwFlag").toString());
	
		if(checkId == 0) {								
	%>				
		<script language="JavaScript">
			alert("입력하신 아이디는 존재하지 않는 아이디입니다. 아이디를 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		} else if (checkPw == 0) {
	%>
		<script language="JavaScript">
			alert("입력하신 비밀번호가 틀립니다. 다시 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		} else if (request.getAttribute("mid").equals("admin")) {
	%>
		<script language="JavaScript">
		document.location = "adminInfo";
		</script>
	
	<% 
		} else {
			
			session.setAttribute("ValidMem", "yes");
		}
	%>
	 
	 
	<div class="wrapper_loginok">


	<table class="tt1" width="90%">
		<tr>
			<td>
			${mname }님 안녕하세요.</td>
		</tr>
	</table>


	<table class="tt2" width="90%">
		<tr>
			<td width="25%">예약(접종/진료/미용)</td>
			<td width="25%">1:1 문의하기</td>
			<td width="25%">회원정보</td>
		</tr>
	
		<tr  height="200">
			<td><a href="history"><img src="<c:url value="/resources/img/care.png" />"></a></td>
			<td><a href="QnA"><img src="<c:url value="/resources/img/qna.png" />"></a></td>
			<td><a href="infomodify"><img src="<c:url value="/resources/img/infomodify.png" />"></a></td>
		</tr>
	</table>
				
	</div>

	<table class="mtable">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>

	<%@ include file="include/footer.jsp" %>

</body>
</html>