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

 <div class="wrapper_loginok">
            

<% if(session.getAttribute("id") != null) {
	%>
								

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
	
<tr>
	<td>&nbsp;</td>
	<td><img src="<c:url value="/resources/img/user.png" />"></td>
	<td text-align="left">
		<input id="email" type="text" name="qid" value="${memberDto.mid }" readonly>
	</td>
	<td>&nbsp;</td>
</tr>
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
	<td width="10%"><img src="<c:url value="/resources/img/user.png" />"></td>
	<td width="40%">
	<textarea id="password" rows="" cols="" name="qcontent"></textarea>
	<input type="text" id="password" placeholder="문의사항" name="qquestion"></td>
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

</table>
</form>	




<% } else {out.print("로그인 후 이용 가능합니다.");} %>

</div>
        <table class="mtable">
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>

<%@ include file="include/footer.jsp" %>

</body>
</html>