<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/mainCss.css"/>
<script type="text/javascript" src="./js/setting.js" defer="defer"></script>
</head>
<body>
<div class="m-3">
	<table class="table" style="width: 700px; margin-left: auto; margin-right: auto;">
		<tr class="table-primary">
			<th colspan="4" style="font-size: 30px; text-align: center;">게시글 보기</th>
		</tr>
		<tr class="table-success">
			<td style="width: 100px; text-align: center;">글번호</td>
			<td style="width: 350px; text-align: center;">이름</td>
			<td style="width: 150px; text-align: center;">작성일</td>
			<td style="width: 100px; text-align: center;">조회수</td>
		</tr>
		<tr>
			<td align="center">${vo.idx}</td>
			<td align="center">
				<c:set var="name" value="${fn:replace(vo.name, '<', '&lt;')}"/>
				<c:set var="name" value="${fn:replace(name, '>', '&gt;')}"/>
				${name}
			</td>
			<td align="center">
				<jsp:useBean id="date" class="java.util.Date"/>
				<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
					date.date == vo.writeDate.date}">
					<fmt:formatDate value="${vo.writeDate}" pattern="a h:mm:ss"/>
				</c:if>
				<c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month ||
					date.date != vo.writeDate.date}">
					<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
				</c:if>
			</td>
			<td align="center">${vo.hit}</td>
		</tr>
		<tr>
			<th class="align-middle">제목</th>
			<td colspan="3">
				<c:set var="subject" value="${fn:replace(vo.subject, '<', '&lt;')}"/>
				<c:set var="subject" value="${fn:replace(subject, '>', '&gt;')}"/>
				${subject}
			</td>
		</tr>
		<tr>
			<th class="align-middle">내용</th>
			<td colspan="3">
				<c:set var="content" value="${fn:replace(vo.content, '<', '&lt;')}"/>
				<c:set var="content" value="${fn:replace(content, '>', '&gt;')}"/>
				<c:set var="content" value="${fn:replace(content, enter, '<br/>')}"/>
				${content}
			</td>
		</tr>
		<!-- 글에 저장되어있는 정보와 현재 로그인중인 회원 정보가 일치하면 아래 버튼 다 나오고 다르면 목록보기만 -->
		<tr class="table-secondary">
			<td colspan="4" align="center">
				<c:if test="${rvo.id eq vo.id}">
				<input 
					class="btn btn-sm" 
					type="button" 
					value="수정하기"
					style="font-size: 13px;"
					onclick="location.href='selectByIdx.jsp?idx=${vo.idx}&currentPage=${currentPage}&job=update'"/>
				<input 
					class="btn btn-sm" 
					type="button" 
					value="삭제하기"
					style="font-size: 13px;"
					onclick="location.href='selectByIdx.jsp?idx=${vo.idx}&currentPage=${currentPage}&job=delete'"/>
				</c:if>
				<input 
					class="btn btn-sm" 
					type="button" 
					value="목록보기"
					style="font-size: 13px;"
					onclick="location.href='list.jsp?currentPage=${currentPage}'"/>
			</td>
		</tr>
	</table>
</div>

<hr style="color: red; width: 700px; margin-left: auto; margin-right: auto;"/>

<!-- 댓글 폼 -->
<form class="m-3" action="commentOK.jsp" method="post" name="commentForm">
	<table class="table" style="width: 700px; margin-left: auto; margin-right: auto;">
		<tr class="table-success">
			<th colspan="4" style="font-size: 30px; text-align: center;">댓글 보기</th>
		</tr>
	
		<!-- 이 줄은 원래 보이면 안되는 줄로 작업이 완료되면 화면에 표시되지 않게 한다. -->
		<!-- <tr> -->
		<tr style="display: none;">
			<td colspan="4">
				<!-- 수정 또는 삭제할 댓글의 글번호 -->
				idx: <input type="text" name="idx" value="${vo.idx}" size="1"/>
				<!-- 현재 댓글이 어떤 메인글의 댓글인가 -->
				gup: <input type="text" name="gup" value="${vo.idx}" size="1"/>
				<!-- 작업 모드, 1 => 댓글 저정, 2 => 댓글 수정, 3 => 댓글 삭제 -->
				mode: <input type="text" name="mode" value="1" size="1"/>
				<!-- 메인글이 표시되던 페이지 번호 -->
				currentPage: <input type="text" name="currentPage" value="${currentPage}" size="1"/>
				<!-- 댓글 작성자 ip 주소 -->
				ip: <input type="text" name="ip" value="${pageContext.request.remoteAddr}"/>
			</td>
		</tr>
		
		<!-- 이 줄 부터 댓글 입력, 수정, 삭제에 사용한다. -->
		<!-- 로그인 중인 회원 정보 받아서 다르게 띄워야 함 -->
		<tr>
			<th class="align-middle" style="width: 100px; text-align: center;">
				<label for="name">이름</label>
			</th>
			<td style="width: 250px;">
				<input id="name" class="form-control form-control-sm" type="text" name="name" value="${rvo.username}" readonly="readonly"/>
			</td>
		</tr>
		<input id="id" type="hidden" name="id" value="${rvo.id}"/>
		<tr>
			<th class="align-middle" style="width: 100px; text-align: center;">
				<label for="content">내용</label>
			</th>
			<td colspan="3" style="width: 600px;">
				<textarea 
					id="content" 
					class="form-control form-control-sm" 
					rows="3"
					name="content" 
					style="resize: none;"></textarea>
			</td>
		</tr>
		<tr class="table-info">
			<td colspan="4" align="center">
				<input 
					class="btn btn-outline-primary btn-sm" 
					type="submit" 
					value="댓글저장"
					style="font-size: 13px;"
					name="commentBtn"/>
				<input 
					class="btn btn-outline-danger btn-sm" 
					type="button" 
					value="다시쓰기"
					style="font-size: 13px;"
					onclick="setting(0, 1, '댓글저장', '', '')"/>
			</td>
		</tr>
		
		<!-- 댓글을 출력한다. -->
		<c:set var="comment" value="${freeboardCommentList.list}"></c:set>
		
		<!-- 댓글이 없는 경우 -->
		<c:if test="${comment.size() == 0}">
		<tr>
			<td colspan="4">
				<marquee>댓글이 하나도 없네요~~~~~ 인기가 꽝이에요~~~~~</marquee>
			</td>
		</tr>
		</c:if>
		
		<!-- 댓글이 있는 경우 -->
		<c:if test="${comment.size() != 0}">
		<c:forEach var="co" items="${comment}">
		<tr>
			<td colspan="4">
				${co.idx}.
				<c:set var="name" value="${fn:replace(co.name, '<', '&lt;')}"/>
				<c:set var="name" value="${fn:replace(name, '>', '&gt;')}"/>
				${name} 
				<fmt:formatDate value="${co.writeDate}" pattern="yyyy.MM.dd(E) HH:mm:ss"/><br/>
				<c:set var="content" value="${fn:replace(co.content, '<', '&lt;')}"/>
				<c:set var="content" value="${fn:replace(content, '>', '&gt;')}"/>
				<c:set var="content" value="${fn:replace(content, enter, '<br/>')}"/>
				${content}
				<br/>
				<div align="right">
					<!-- 글에 저장되어있는 정보와 현재 로그인중인 회원 정보가 일치하면 아래 버튼 다 나오고 다르면  -->
					<c:if test="${rvo.id eq co.id}">
						<input 
							class="btn btn-sm" 
							type="button" 
							value="수정하기"
							style="font-size: 13px;"
							onclick="setting(${co.idx}, 2, '댓글수정', '${name}', '${content}')"/>
						<input 
							class="btn btn-sm" 
							type="button" 
							value="삭제하기"
							style="font-size: 13px;"
							onclick="setting(${co.idx}, 3, '댓글삭제', '${name}', '${content}')"/>
					</c:if>
				</div>
			</td>
		</tr>
		</c:forEach>
		</c:if>
		
	</table>
</form>
<footer>
	<jsp:include page="./footerAfter.jsp"></jsp:include>
</footer>
</body>
</html>











