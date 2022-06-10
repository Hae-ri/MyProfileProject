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
                <li><a href="history">예약내역</a></li>
                <li><a href="QnA">문의내역</a></li>
				<li><a href="infomodify">회원정보</a></li>
            </ul>
        </div>
       
        <!-- 본문 컨테이너 : main -->
        <div id="main">


 <div class="wrapper_loginok">
            

						

		<table class="tt1">
			<tr>
				<td><span id="menu">문의하기</span></td>
			</tr>
		</table>
					
					
		<table width="900px" class="tt3">
			<tr>
				<td colspan="4" height="40">&nbsp;</td>
			</tr>
			<!-- Q_LIST로 넘겨줄 데이터// 아이디, 이름, 문의내용 -->
				<form action="questionwrite" method="post" name="reg_frm">
				<input type="hidden" name="qid" value="${memberDto.mid }">	
				<input type="hidden" name="qstatus" value="준비중">
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%"><img src="<c:url value="/resources/img/user.png" />"></td>
				<td width="40%">
					<input type="text"  id="password" value="${memberDto.mname }" name="qname">
				</td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%"><img src="<c:url value="/resources/img/qwrite.png" />"></td>
				<td width="40%">
					<textarea name="qquestion"></textarea>	
				</td>
				<td width="25%">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="4" height="40">&nbsp;</td>
			</tr>
			<tr>
				<td height="80" colspan="4">
					<input id="button" type="button" value="문의하기" onclick="qboardConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="button" type="button" value="문의내역" onclick="javascript:window.location='QnA'">
				</td>
			</tr>
			</form>	
		</table>




<% } else {out.print("로그인 후 이용 가능합니다.");} %>

</div>
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