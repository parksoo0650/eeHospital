<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	<ul class="gnb width_full_size text_center" style="height:40%">
		<li><a href="${context}/patient.do?action=move&page=registerForm" >고객:회원가입</a></li>
		<li><a href="${context}/patient.do?action=move&page=loginForm">고객:로그인</a></li>
		<li><a href="${context}/board.do?action=move&page=main">스탭:로그인</a></li>
		<li><a href="${context}/admin.do?action=move&page=loginForm">관리자:로그인</a></li>
		<li><a href="${context}/admin.do?action=move&page=loginForm">게시판</a></li>
		<li><div class="tooltip"><a href="#">병원소개</a>
  			<span class="tooltiptext">구현되지 않은 기능입니다.</span>
			</div>
		</li>
	</ul>
</div>