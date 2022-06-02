<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
</head>
<header>
	<table class="t-type03" width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr height="50">
			<td width="5%">&nbsp;</td>
			<td width="5%" align="center"><a href="index"><img src="<c:url value="/resources/img/pet.png" />"></a></td>
			<td width="10%">우리아이사랑병원</td>
			<td width="50%">&nbsp;</td>


			<td width="10%">
			
			
			
							<% 
					String sessionId = (String)session.getAttribute("id");
				
					if(sessionId == null) {
						
						%>	
						<a href="join">회원가입</a>
						
						<%
						
					}else if(sessionId.equals("admin")) {
						%>
						
						<a href="adminInfo">관리자</a>
						
						<%
						
					}else {
						%>
						
						<a href="memberInfo">나의 정보</a>
						<%
					}
				%>
				
				
				</td>
			
			
			<td width="10%">
				<% 
					sessionId = (String)session.getAttribute("id");
				
					if(sessionId == null) {
						
						%>	
						&nbsp;<a href="login">로그인</a>
						<%
						
					}else {
						%>
						
						<a href="logout">로그아웃</a>
						<%
					}
				%>
			</td>
			<td width="10%"><a href="map">오시는 길</a></td>
		</tr>	
		
	</table>
	<center>
	<div style="width:90%; height: 3px; border: 1px solid pink; border-radius: 2em; background-color:pink;">
&nbsp;</div></center>
</header>
</html>