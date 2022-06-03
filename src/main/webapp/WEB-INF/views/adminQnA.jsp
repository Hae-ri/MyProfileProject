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

<div class="wrapper_history">

<table class="tt1">
						<tr>
							<td><h2>문의내역</h2></td>
						</tr>		
					</table>
					

        <div class="tab1_content"> <!-- 전체 -->
        
        <table>
						<tr>
							<td><span id="count">

	${count} 건</span></td>
						</tr>		
					</table>
					
					
            <table width="800px" class="tab_table01">


	
<tr height="40">

								<th>순번</th>
								<th>문의 내용</th>
								<th>날짜</th>
								<th>답변</th>
</tr>


	<c:forEach items="${list }" var="dto" varStatus="status">
							<tr height="30">
								
  								<td class="tab_td">${count+1-status.count}</td>
								<td class="tab_td01"><a href="adminqview?qnum=${dto.qnum }">
								
								<c:choose>
									<c:when test="${fn:length(dto.qquestion) > 19 }">
										<c:out value="${fn:substring(dto.qquestion,0,18)}" />....
									</c:when>
									<c:otherwise>
										<c:out value="${dto.qquestion }" />
									</c:otherwise>	
								</c:choose>
								</a>
								
								<td class="tab_td">
									${dto.qdate }
								<td class="tab_td">${dto.qstatus }</td>
							</tr>		
							</c:forEach>
<tr>
	<td height="40">&nbsp;</td>
</tr>

</table>

            
        </div>
          


<table width="900px" class="tt3">

<tr>
	<td height="80px" colspan="4">
	
	</td>
</tr>
			
		</table>	
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