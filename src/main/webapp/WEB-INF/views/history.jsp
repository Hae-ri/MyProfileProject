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
							<td><span id="menu">${memberDto.mname }님 예약내역</span></td>
						</tr>		
					</table>
					

    <div class="tabmenu">
        <input type="radio" name="tab" id="tab1" checked="checked">
        <input type="radio" name="tab" id="tab2">
        <input type="radio" name="tab" id="tab3">
        <input type="radio" name="tab" id="tab4">
        <label class="label1" for="tab1">전체 보기</label>
        <label for="tab2">접종</label>
        <label for="tab3">진료</label>
        <label for="tab4">미용</label>
        
        
        <div class="tab1_content"> <!-- 전체 -->
        
        <table>
						<tr>
							<td><span id="count">

	
	
	
	${count} 건</span></td>
						</tr>		
					</table>
					
					
            <table width="800px" class="tab_table01">


	
<tr height="40">

								<th width="100px">번호</th>
								<th width="200px">예약 종류</th>
								<th width="300px">예약일자</th>
								<th width="200px">진료여부</th>
</tr>


	<c:forEach items="${list }" var="dto" varStatus="status">
							<tr height="30">
								
  								<td width="100px" class="tab_td">${count+1-status.count}</td>
								<td width="200px" class="tab_td">${dto.rclass }</td>
								<td width="300px" class="tab_td"><a href="mview?rnum=${dto.rnum }">
									<c:out value="${fn:substring(dto.rdayof,0,10) }"></c:out>&nbsp;<c:out value="${fn:substring(dto.rdayof,11,16) }"></c:out>
								<td width="200px" class="tab_td">${dto.rstatus }</td>
							</tr>		
							</c:forEach>
<tr>
	<td height="40">&nbsp;</td>
</tr>

</table>

            
        </div>
        <div class="tab2_content"> <!-- 접종 -->
        
                <table>
						<tr>
							<td><span id="count">${count01} 건</span></td>
						</tr>		
					</table>

  <table width="800px" class="tab_table01">

	
<tr height="40">

								<th width="100px">번호</th>
								<th width="200px">예약 종류</th>
								<th width="300px">예약일자</th>
								<th width="200px">진료여부</th>
</tr>


	<c:forEach items="${list01 }" var="dto01" varStatus="status">
							<tr height="30">
								
  								<td width="100px" class="tab_td">${count01+1-status.count}</td>
								<td width="200px" class="tab_td">${dto01.rclass }</td>
								<td width="300px" class="tab_td"><a href="mview?rnum=${dto01.rnum }">
									<c:out value="${fn:substring(dto01.rdayof,0,10) }"></c:out>&nbsp;<c:out value="${fn:substring(dto01.rdayof,11,16) }"></c:out>
								<td width="200px" class="tab_td">${dto01.rstatus }</td>
							</tr>		
							</c:forEach>
<tr>
	<td height="40">&nbsp;</td>
</tr>

</table>

        </div>
        <div class="tab3_content"> <!-- 진료 -->
            
                    <table>
						<tr>
							<td><span id="count">${count02} 건</span></td>
						</tr>		
					</table>
					
            <table width="800px" class="tab_table01">

	
<tr height="40">

								<th width="100px">번호</th>
								<th width="200px">예약 종류</th>
								<th width="300px">예약일자</th>
								<th width="200px">진료여부</th>
</tr>


	<c:forEach items="${list02 }" var="dto02" varStatus="status">
							<tr height="30">
								
  								<td width="100px" class="tab_td">${count02+1-status.count}</td>
								<td width="200px" class="tab_td">${dto02.rclass }</td>
								<td width="300px" class="tab_td"><a href="mview?rnum=${dto02.rnum }">
									<c:out value="${fn:substring(dto02.rdayof,0,10) }"></c:out>&nbsp;<c:out value="${fn:substring(dto02.rdayof,11,16) }"></c:out>
								<td width="200px" class="tab_td">${dto02.rstatus }</td>
							</tr>		
							</c:forEach>
<tr>
	<td height="40">&nbsp;</td>
</tr>

</table>
            
            
               </div>
        <div class="tab4_content"> <!-- 미용 -->
        
                <table>
						<tr>
							<td><span id="count">${count03} 건</span></td>
						</tr>		
					</table>
					
           <table width="800px" class="tab_table01">

	
<tr height="40">

								<th>번호</th>
								<th>예약 종류</th>
								<th>예약일자</th>
								<th>진료여부</th>
</tr>


	<c:forEach items="${list03 }" var="dto03" varStatus="status">
							<tr height="30">
								
  								<td width="100px" class="tab_td">${count03+1-status.count}</td>
								<td width="200px" class="tab_td">${dto03.rclass }</td>
								<td width="300px" class="tab_td"><a href="mview?rnum=${dto03.rnum }">
									<c:out value="${fn:substring(dto03.rdayof,0,10) }"></c:out>&nbsp;<c:out value="${fn:substring(dto03.rdayof,11,16) }"></c:out>
								<td width="200px" class="tab_td">${dto03.rstatus }</td>
							</tr>		
							</c:forEach>
<tr>
	<td height="40">&nbsp;</td>
</tr>

</table>
          
          
            </div>
    </div>

    

<table width="900px" class="tt3">

<tr>
	<td height="80px" colspan="4">
	
	<input id="history_button" type="button" value="예약하기" onclick="javascript:window.location='mwrite'">
		
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