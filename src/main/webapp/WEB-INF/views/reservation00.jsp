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
</head>
<body>


<%@ include file="include/header.jsp" %>
	<center>
	<table width="70%" border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td>홈>진료예약>예약하기</td>
		</tr>

		<tr>
		
			<!-- 중간 -->
			<table width="70%" border="0" cellpadding="10" cellspacing="0">
				<tr>
					<td height="500" bgcolor="#D5D5D5" align="center">
						<table border="0" cellpadding="0" cellspacing="20">

						
						<input id="button01" type="button"  onclick="javascript:window.location='login'" value="회원
예약" onclick="" style="width:300px;height:300px;">&nbsp;&nbsp;&nbsp;&nbsp;
						<input id="button01" type="button" onclick="javascript:window.location='non_mem_reservation'" value="비회원
예약" onclick="" style="width:300px;height:300px;" >


						</table>
					
					</td>
				</tr>
			</table>
		</tr>
	</table>

	<%@ include file="include/footer.jsp" %>

</body>
</html>