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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
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
            </ul>
        </div>
       
        <!-- 본문 컨테이너 : main -->
        <div id="main">
        
 <div class="wrapper_loginok">
            


								

					<table class="tt1">
						<tr>
							<td><span id="menu">회원정보</span></td>
						</tr>
					</table>
					
					
<table width="900px" class="tt3">
<tr>
	<td height="40">&nbsp;</td>
</tr>

	<form action="admininfomodifyOk" method="post" name="reg_frm">
	<input type="hidden" name="id" value="${memberDto.mid }">
	
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">아이디</td>
	<td width="40%" text-align="left">
		<input type="text" id="email" value="${memberDto.mid }" readonly>
	</td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">비밀번호</td>
	<td width="40%">
	 <input type="password" id="password" placeholder="비밀번호" name="pw">
	</td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">비밀번호 확인</td>
	<td width="40%">
	 <input type="password" id="password" placeholder="비밀번호 확인" name="pw_check">
	</td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">이름</td>
	<td width="40%">
	<input type="text" id="password" placeholder="이름" value="${memberDto.mname }" name="name">
	</td>
	<td width="25%">&nbsp;</td>
</tr>

<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">전화번호</td>
	<td width="40%"><input type="text" id="password" placeholder="전화번호"  value="${memberDto.mphone }" name="phone"></td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td width="25%">&nbsp;</td>
	<td width="10%" class="td-type04">가입일자</td>
	<td width="40%"><input type="text" id="password" value="${memberDto.mdate}" readonly></td>
	<td width="25%">&nbsp;</td>
</tr>
<tr>
	<td height="40">&nbsp;</td>
</tr>
<tr>
	<td height="80" colspan="4">
	
	<input id="button" type="button" value="정보수정" onclick="infoModifyConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;

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

<!--  왼쪽 메뉴 추가 -->

         </div>
     </div>

<%@ include file="include/footer.jsp" %>

</body>
</html>