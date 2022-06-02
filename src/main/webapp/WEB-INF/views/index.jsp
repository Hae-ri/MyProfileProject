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



	<table>
	<tr>
		<td><img src="<c:url value="/resources/img/cat1.jpg" />"></td>
	</tr>
	<tr>
		<td><img src="<c:url value="/resources/img/cat2.jpg" />"> </td>
	</tr>
</table>
           
        
        <table class="mtable">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>


	<%@ include file="include/footer.jsp" %>

</body>
</html>