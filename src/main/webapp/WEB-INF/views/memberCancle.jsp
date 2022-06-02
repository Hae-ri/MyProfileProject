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
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>

<script type="text/javascript">

</script>

</head>
<body>
	
	<%@ include file="include/header.jsp" %>
 <div class="wrapper_loginok">

					<table class="tt1">
						<tr>
							<td><span id="menu">회원탈퇴</span></td>
						</tr>
					</table>
					
					
<table width="900px" class="tt3">
<tr>
	<td height="40">&nbsp;</td>
</tr>

	<form action="memberCancleOk" method="post" name="reg_frm">
	<input type="hidden" name="id" value="${memberDto.mid }">

<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">비밀번호</td>
	<td width="40%">
	 <input type="password" id="password" placeholder="비밀번호" name="pw">
	</td>
	<td width="25%">&nbsp;</td>
</tr>

<tr>
	<td height="40">&nbsp;</td>
</tr>
<tr>
	<td height="80" colspan="4">
	
	<input id="button" type="button" value="회원탈퇴" onclick="checkValue()">&nbsp;&nbsp;&nbsp;&nbsp;
	<input id="button" type="button" value="취소" onclick="javascript:window.location='infomodify'">
	
	</td>
</tr>

</table>
</form>	
</div>
	<%@ include file="include/footer.jsp" %>

</body>
</html>