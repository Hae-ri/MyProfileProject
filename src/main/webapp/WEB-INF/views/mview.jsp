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

 <div class="wrapper_loginok">
            

<% if(session.getAttribute("id") != null) {
	%>
								

					<table class="tt1">
						<tr>
							<td><span id="menu">예약확인</span></td>
						</tr>
					</table>
					
					
<table width="900px" class="tt3">
<tr>
	<td height="40">&nbsp;</td>
</tr>

		
		<input type="hidden" name="rnum" value="${mview.rnum }">
	
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">아이디</td>
	<td width="40%">
		<input id="email" type="text" name="rid" value="${mview.rid }" readonly>
	</td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">이름</td>
	<td width="40%">
	 <input type="text"  id="password" value="${mview.rname }" name="rname" readonly>
	</td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">종류</td>
	<td width="40%">
	

	<input type="text"  id="password" value="${mview.rclass }" name="rclass" readonly>
	
	
	</td>
	<td width="25%">&nbsp;</td>
</tr>

<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">예약일자</td>
	<td width="40%"><input  type="text"  id="password" value="<c:out value="${fn:substring(mview.rdayof,0,10) }"></c:out>&nbsp;<c:out value="${fn:substring(mview.rdayof,11,16) }"></c:out>" name="rdayof" readonly>
	
	</td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">요청사항</td>
	<td width="40%"><input  type="text" id="password" value="${mview.rcontent }" name="rcontent" readonly></td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td height="40">&nbsp;</td>
</tr>
<tr>
	<td height="80" colspan="4">
		<input id="button" type="button" value="돌아가기" onclick="javascript:window.location='history'">&nbsp;&nbsp;&nbsp;&nbsp;
		<input id="button" type="submit" value="예약취소" onclick="del(${mview.rnum })">
	
	</td>
</tr>

</table>





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