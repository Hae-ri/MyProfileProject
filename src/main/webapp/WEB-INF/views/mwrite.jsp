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

<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
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
				<td width="10%"><img src="<c:url value="/resources/img/class.png" />"></td>
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
				<td width="10%"><img src="<c:url value="/resources/img/date.png" />"></td>
				<td width="40%">
					<input name="rdayof" autocomplete="off" readonly="readonly">&nbsp;
					<select name='rtime'>
					  <option value='' selected>-- 선택 --</option>
					  <option value='1'>10:30~11:30</option>
					  <option value='2'>11:30~12:30</option>
					  <option value='3'>13:30~14:30</option>
					  <option value='4'>14:30~15:30</option>
					  <option value='5'>15:30~16:30</option>
					</select>
			
			<script language="JavaScript">
			/* 설정 */
			const config = {
				dateFormat: 'yy-mm-dd',
			    prevText: '이전 달',
			    nextText: '다음 달',
			    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			    dayNames: ['일','월','화','수','목','금','토'],
			    dayNamesShort: ['일','월','화','수','목','금','토'],
			    dayNamesMin: ['일','월','화','수','목','금','토'],
			    yearSuffix: '년',
		        changeMonth: true,
		        changeYear: true
			}
		
		
			/* 캘린더 */
			$(function() {
			  $( "input[name='rdayof']" ).datepicker(config);
			});
		    </script>
			<!--
		https://kimvampa.tistory.com/194
			 -->
			
				</td>
		
			</tr>
		
			<tr>
				<td width="25%">&nbsp;</td>
				<td width="10%"><img src="<c:url value="/resources/img/comment.png" />"></td>
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