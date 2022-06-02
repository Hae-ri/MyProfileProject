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

<center>
					<table class="tt1">
						<tr>
							<td><span id="menu">오시는 길</span></td>
						</tr>
					</table>
	<table>
	
	<tr>
		<td>
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3167.483515859475!2d126.69881231536868!3d37.44930423859089!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7bd9553b905b%3A0xd7b33e1ebe4a592e!2z7JiI7Iig7ZqM6rSA7Jet!5e0!3m2!1sko!2skr!4v1654147288392!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</td>
	</tr>
		<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td id="count">인천광역시 남동구 구월동 예술로 (예술회관역 1번 출구)</td>
	</tr>
	
</table>
           
</center>
        <table class="mtable">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>


	<%@ include file="include/footer.jsp" %>

</body>
</html>