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
	
	
	

	<%
		int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
		int checkPw = Integer.parseInt(request.getAttribute("checkPwFlag").toString());
	
		if(checkPw == 0) {								
	%>				
		<script language="JavaScript">
			alert("입력하신 비밀번호가 틀립니다. 다시 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		}
	%>
	
		<div class="wrapper_loginok">


					<table class="tt1" width="90%">
						<tr>
							<td>
							
							그동안 이용해주셔서 감사합니다.</td>
						</tr>
					</table>

		</div>
	

	<%@ include file="include/footer.jsp" %>

</body>
</html>