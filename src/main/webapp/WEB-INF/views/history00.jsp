<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css">
</head>
<body>
<%@ include file="include/header.jsp" %>

<table class="mtable">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>


<div class="wrapper_loginok">
            

								

					<table class="tt1">
						<tr>
							<td><span id="menu">예약내역</span></td>
						</tr>
						<tr>
							<td>${memberDto.mname }님 총 ${count }건</span></td>
						</tr>
					</table>
					
					
					
<table width="900px" class="tt3">
<tr>
	<td height="40">&nbsp;</td>
</tr>
	
<tr>

								<td>번호</td>
								<td>예약 종류</td>
								<td>예약일자</td>
								<td>진료여부</td>
</tr>
<c:forEach items="${list }" var="dto">
							<tr>
							

								 
								 
								 
								
								<td>${dto.rnum }</td>
								<td>${dto.rclass }</td>
								<td><a href="qview?qnum=${dto.rnum }">
									<c:out value="${fn:substring(dto.rdayof,0,16) }"></c:out>
								<td>${dto.rstatus }</td>
							</tr>		
							</c:forEach>
<tr>
	<td height="40">&nbsp;</td>
</tr>
<tr>
	<td height="80" colspan="4">
	
	<input id="button" type="button" value="예약하기" onclick="javascript:window.location='mwrite'">
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input id="button" type="button" value="돌아가기" onclick="javascript:window.location='memberInfo'">
	
	</td>
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