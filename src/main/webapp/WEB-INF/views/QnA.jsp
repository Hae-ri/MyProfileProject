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

<div class="wrapper_history">

<table class="tt1">
						<tr>
							<td><span id="menu">${memberDto.mname }님 문의내역</span></td>
						</tr>		
					</table>
					

        <div class="tab1_content"> <!-- 전체 -->
        
        <table>
						<tr>
							<td><span id="count">

	${count} 건</span></td>
						</tr>		
					</table>
					
					
            <table width="800px" class="tab_table01">


	
<tr height="40">

								<th width="100px">순번</th>
								<th width="200px">문의 내용</th>
								<th width="300px">날짜</th>
								<th width="200px">답변</th>
</tr>


	<c:forEach items="${list }" var="dto" varStatus="status">
							<tr height="30">
								
  								<td width="100px" class="tab_td">${count+1-status.count}</td>
								<td width="200px" class="tab_td">${dto.rclass }</td>
								<td width="300px" class="tab_td"><a href="mview?rnum=${dto.rnum }">
									<c:out value="${fn:substring(dto.rdayof,0,10) }"></c:out>&nbsp;<c:out value="${fn:substring(dto.rdayof,11,16) }"></c:out>
								<td width="200px" class="tab_td">${dto.rstatus }</td><!-- qanswer가 null이면 준비중, 값이 있으면 완료 -->
							</tr>		
							</c:forEach>
<tr>
	<td height="40">&nbsp;</td>
</tr>

</table>

            
        </div>
          


<table width="900px" class="tt3">

<tr>
	<td height="80px" colspan="4">
	
	<input id="history_button" type="button" value="문의하기" onclick="javascript:window.location='qwrite'">
		
		<!--
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input id="history_button" type="button" value="돌아가기" onclick="javascript:window.location='memberInfo'">
		-->
	
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