<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="veiwport" content="width=device-width" , initial-scale="1.0" />
<link rel="stylesheet" href="resources/community/css/bootstrap.css" />
<link rel="stylesheet" href="resources/community/css/custom.css" />
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/all.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<!-- style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<title>Community</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/community">커뮤니티</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/freeBoard">자유 게시판</a></li>
				<li><a href="#">홍보 게시판</a></li>
				<li><a href="#">문의 게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="/logout">로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<!-- start search -->
		<div class="row">
		<div style="float:right">
			<form action="" method="get" id="searchForm">
				<select name="type" id="" style="width:135px">
					<option value="T"
						<c:out value="${pageVO.cri.type=='T'?'selected':'' }" />>제목</option>
					<option value="C"
						<c:out value="${pageVO.cri.type=='C'?'selected':'' }" />>내용</option>
					<option value="W"
						<c:out value="${pageVO.cri.type=='W'?'selected':'' }" />>작성자</option>
				</select> <input type="text" name="keyword" value="${pageVO.cri.keyword }" />
				<input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }" />
				<input type="hidden" name="amount" value="${pageVO.cri.amount }" />
				<button type="button" class="btn btn-default">검색</button>
			</form>
		</div>
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center">번호</th>
						<th style="background-color: #eeeeee; text-align: center">제목</th>
						<th style="background-color: #eeeeee; text-align: center">작성자</th>
						<th style="background-color: #eeeeee; text-align: center">작성일</th>
						<th style="background-color: #eeeeee; text-align: center">수정일</th>
					</tr>
				</thead>
				<tbody>
					<!-- 게시판 리스트 반복문 -->
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>${vo.bno }</td>
							<td><a href="${vo.bno }" class="move">${vo.title }</a>
								<strong>[${vo.replycnt }]</strong></td>
							<td>${vo.writer }</td>
							<td><fmt:formatDate pattern="yyy-MM-dd HH:mm"
									value="${vo.regdate }" /></td>
							<td><fmt:formatDate pattern="yyy-MM-dd HH:mm"
									value="${vo.updatedate }" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="text-center">
				<ul class="pagination">
					<c:if test="${pageVO.prev }">
						<li class="paginate_button previous"><a
							href="${pageVO.startPage-1 }">이전</a></li>
					</c:if>

					<c:forEach var="idx" begin="${pageVO.startPage }"
						end="${pageVO.endPage }">
						<li
							class="paginate_button ${pageVO.cri.pageNum==idx?'active':'' }">
							<a href="${idx }">${idx }</a>
						</li>
					</c:forEach>

					<c:if test="${pageVO.next }">
						<li class="paginate_button next"><a
							href="${pageVO.endPage+1 }">다음</a></li>
					</c:if>
				</ul>
				<a href="write" class="btn btn-primary pull-right">글쓰기</a>
			</div>
		</div>
	</div>
	<form action="freeBoard" method="get" id="actionForm">
		<input type="hidden" name="type" value="${pageVO.cri.type }" /> <input
			type="hidden" name="keyword" value="${pageVO.cri.keyword }" /> <input
			type="hidden" name="pageNum" value="${pageVO.cri.pageNum }" /> <input
			type="hidden" name="amount" value="${pageVO.cri.amount }" />
	</form>
		<script>
		let result = '${result}';
	</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="/resources/js/freeBoard.js"></script>
</body>
</html>