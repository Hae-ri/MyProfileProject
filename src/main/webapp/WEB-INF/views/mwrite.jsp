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
							<td><span id="menu">예약하기</span></td>
						</tr>
					</table>
					
					
<table width="900px" class="tt3">
<tr>
	<td colspan="4" height="40">&nbsp;</td>
</tr>
<!-- R_LIST로 넘겨줄 데이터// 아이디, 이름, 예약종류, 예약일자, 요청사항, 예약상태 -->
	<form action="memberwrite" method="post" name="reg_frm">
	<input type="hidden" name="rstatus" value="예약완료">
	
<tr>
	<td>&nbsp;</td>
	<td><img src="<c:url value="/resources/img/user.png" />"></td>
	<td text-align="left">
		<input id="email" type="text" name="rid" value="${memberDto.mid }" readonly>
	</td>
	<td>&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%"><img src="<c:url value="/resources/img/user.png" />"></td>
	<td width="40%">
	 <input type="text"  id="password" value="${memberDto.mname }" name="rname">
	</td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%"><img src="<c:url value="/resources/img/user.png" />"></td>
	<td width="40%">
	

	<input type="radio" style="width:15px;height:15px;border:1px;" name="rclass" value="접종" id="radio1">
	<label for="radio1">접종</label>
	<input type="radio" style="width:15px;height:15px;border:1px;" name="rclass" value="진료" checked id="radio2">
	<label for="radio2">진료</label>
	<input type="radio" style="width:15px;height:15px;border:1px;" name="rclass" value="미용" id="radio3"/>
	<label for="radio3">미용</label>
	
	
	</td>
	<td width="25%">&nbsp;</td>
</tr>

<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%"><img src="<c:url value="/resources/img/user.png" />"></td>
	<td width="40%">
	<input type="datetime-local" name="rdayof" id="dateTimeLocal" onchange="setMinValue()">
	
	<script language="JavaScript">
		document.getElementById('dateTimeLocal').value=new Date().toISOString().slice(0,-3); 
        let dateElement = document.getElementById('dateTimeLocal');
        let date = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().slice(0, 16);
        dateElement.value = date;
        dateElement.setAttribute("min", date);

        function setMinValue() {
            if(dateElement.value < date) {
                alert('현재 시간보다 이전의 날짜는 선택할 수 없습니다.');
                dateElement.value = date;
            }
        }
    </script>
	<!--
	https://wildeveloperetrain.tistory.com/15
	https://hianna.tistory.com/319?category=706939
	 -->
	
	</td>
	<td width="25%" align="left">&nbsp;<button type="button" onclick="checkdate()">중복확인</button></td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%"><img src="<c:url value="/resources/img/user.png" />"></td>
	<td width="40%"><input  type="text" id="password" placeholder="요청사항" name="rcontent"></td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td colspan="4" height="40">&nbsp;</td>
</tr>
<tr>
	<td height="80" colspan="4">
		<input id="button" type="button" value="예약하기" onclick="boardConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;
		<input id="button" type="button" value="예약내역" onclick="javascript:window.location='history'">
	
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