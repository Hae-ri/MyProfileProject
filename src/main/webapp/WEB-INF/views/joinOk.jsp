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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
</head>
<body>
	<%@ include file="include/header.jsp" %>

<table class="mtable">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>

	<div class="wrapper_loginok">

					<table class="tt1" width="90%">
						<tr height="60">
			<td><span id="menu">
			
			
			<%
				int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
			
				if(checkId == 1) {								
			%>				
				<script language="JavaScript">
					alert("입력하신 아이디는 이미 사용중입니다. 다른 아이디를 입력하세요.");
					history.go(-1);
				</script>
			<% 
				} 
			%>
	
			${mname }</b> 님 회원 가입을 축하드립니다!</span></td>
		</tr>
				<tr height="40">
			<td>가입하신 아이디는 ${mid } 입니다.</td>
		</tr>
					</table>


					<table class="tt2" width="90%">
						<tr>
							<td width="25%">이력(접종/진료/미용)</td>
							<td width="25%">예약(접종/진료/미용)</td>
							<td width="25%">회원정보수정</td>
						</tr>
					
						<tr  height="200">
							<td><a href="history"><img src="<c:url value="/resources/img/care.png" />"></a></td>
							<td><a href="mwrite"><img src="<c:url value="/resources/img/write.png" />"></a></td>
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