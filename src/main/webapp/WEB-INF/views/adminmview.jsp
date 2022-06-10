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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/write.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
</head>
<body>
<%@ include file="include/header.jsp" %>

<% if(session.getAttribute("id") != null) {
	%>

<!--Content 영역-->
    <div id="content" >
       
        <!-- 왼쪽 메뉴 영역 -->
        <div id="leftColumn">
            <h2>${memberDto.mname }님</h2>
            <ul>
                <li><a href="adminhistory">예약내역</a></li>
                <li><a href="adminQnA">문의내역</a></li>
				<li><a href="admininfomodify">정보수정</a>
            </ul>
        </div>
       
        <!-- 본문 컨테이너 : main -->
        <div id="main">
        
        
		<table class="tt2">
			<tr>
				<td><h2>예약확인</h2></td>
			</tr>
		</table>
					
					
		<table width="900px" class="tt3">
			<tr>
				<td height="40">&nbsp;</td>
			</tr>
			<form action="visitOK" method="post" name="reg_frm">
				<input type="hidden" name="rnum" value="${mview.rnum }">
				<input type="hidden" name="rstatus" value="예약취소">

			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%" class="td-type04">아이디</td>
				<td width="40%">
					<input id="email" type="text" value="${mview.rid }" readonly>
				</td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%" class="td-type04">이름</td>
				<td width="40%">
					<input type="text"  id="password" value="${mview.rname }" readonly>
				</td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%" class="td-type04">종류</td>
				<td width="40%">
					<input type="text"  id="password" value="${mview.rclass }" readonly>
				</td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%" class="td-type04">예약일자</td>
				<td width="40%"><input  type="text"  id="password" value="<c:out value="${fn:substring(mview.rdayof,0,10) }"></c:out>&nbsp;&nbsp;
	<% 
	if(request.getAttribute("Rtime").equals("1")){
	%>10:30~11:30
	<%
	}if(request.getAttribute("Rtime").equals("2")){
	%>10:30~11:30
	<%
	}if(request.getAttribute("Rtime").equals("3")){
	%>13:30~14:30
	<%
	}if(request.getAttribute("Rtime").equals("4")){
	%>14:30~15:30
	<%
	}if(request.getAttribute("Rtime").equals("5")){
	%>15:30~16:30
	<% } %>
	
	" readonly>
	
				</td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%" class="td-type04">요청사항</td>
				<td width="40%"><input  type="text" id="password" value="${mview.rcontent }" readonly></td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%" class="td-type04">상태</td>
				<td width="40%"><input  type="text" id="password" value="${mview.rstatus }" readonly></td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td height="40">&nbsp;</td>
			</tr>
			<tr>
				<td height="80" colspan="4" align="center" >
	<%
	if(request.getAttribute("Rstatus").equals("예약완료")) {
	%>
		<!-- <input id="button" type="button" value="방문완료" onclick="visitCheck()">&nbsp;&nbsp;&nbsp;&nbsp;	 -->
		<input id="button" type="submit" value="예약취소" onclick="admindel(${mview.rnum })">&nbsp;&nbsp;&nbsp;&nbsp;	
		<input id="button" type="button" value="돌아가기" onclick="javascript:window.location='adminhistory'">&nbsp;&nbsp;&nbsp;&nbsp;		
	<%}if(request.getAttribute("Rstatus").equals("방문완료") || request.getAttribute("Rstatus").equals("예약취소") ) { %>
		<input id="button" type="button" value="돌아가기" onclick="javascript:window.location='adminhistory'">&nbsp;&nbsp;&nbsp;&nbsp;
		<%} %>
				</td>
			</tr>
			</form>

		</table>

<% } else {out.print("로그인 후 이용 가능합니다.");} %>

		<!-- </div> -->
		
		
	
		<table class="mtable">
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>



<!--  왼쪽 메뉴 추가 -->

         </div>
     </div>

<%@ include file="include/footer.jsp" %>

</body>
</html>