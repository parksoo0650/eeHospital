<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table id="articleList">
	<tr>
		<td>
			총 게시글 수:${count} 건
		</td>
	</tr>
	<tr>
		<th style="width:1%;">no</th>
		<th style="width:5%;">작성자</th>
		<th style="width:20%;">제목</th>
		<th style="width:5%;">작성일</th>
		<th style="width:5%;">조회수</th>
	</tr>
<c:forEach var="article" items="${requestScope.list}">
	<tr>
		<td>${article.seq}</td>
		<td>${article.id}</td>
		<td><a href="${context}/board.do?action=detail&page=articleDetail&seq=${article.seq}">${article.title}</a></td>
		<td>${article.regdate}</td>
		<td>${article.readCount}</td>
	</tr>
</c:forEach>
</table>
<nav id="pagination">
<ul>
<c:if test="${requestScope.prevBlock gt 0}">
		<li>
		<a href="${context}/board.do?action=list&page=articleList&pageNo=${requestScope.prevBlock}">◀PREVS</a>
		</li>
	</c:if>
<c:forEach varStatus="i" begin="${requestScope.blockStart}" end="${requestScope.blockEnd}" step="1">
	<li>
	<c:choose>
		<c:when test="${i.index eq pageNo}">
			<li style="background-color: skyblue;"><a href="#">${i.index}</a></li>
		</c:when>
		<c:otherwise>
		<li style="background-color: gray;">
			<a href="${context}/board.do?action=list&page=articleList&pageNo=${i.index}">${i.index}</a>
		</li>
		</c:otherwise>
	</c:choose>
	</li>
	</c:forEach>
	<c:if test="${requestScope.nextBlock le pageCount}">
	<li style="background-color: gray;">
		<a href="${context}/board.do?action=list&page=articleList&pageNo=${requestScope.nextBlock}">NEXT▶</a>
	</li>
	</c:if>
</ul>
</nav>
<script>
	$(function() {
		var $articlelist=$('#articleList');
		$articlelist.addClass('table_default').addClass('margin_center')
		.css('width','78%').css('height','200px').css('margin-top','15px');
		$articlelist.find('tr:nth-child(1)').addClass('bg_color_gray').addClass('color_white');
		var $pagination=$('#pagination');
		$pagination.css('width','500px').css('margin','0 auto').css('background-color', 'gray');
		$pagination.find('ul:nth-child(1)').addClass('gnb');
		$pagination.find('ul li:nth-child(1)').css('background-color','gray');
		$pagination.find('ul li:nth-child(2)').css('background-color','gray');
		$pagination.find('ul li:nth-child(3)').css('background-color','gray');
		
		
		
	});
</script>