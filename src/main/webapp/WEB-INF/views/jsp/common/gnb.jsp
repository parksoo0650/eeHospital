<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<ul id="commonGnb" style="height:70%;">
		<li><a>회원가입</a></li>
		<li><a>로그인</a></li>
		<li><a>게시판</a></li>
		<li class="tooltip"><a href="#">병원소개</a>
  			<span class="tooltiptext">구현되지 않은 기능입니다.</span>
		</li>
	</ul>

<script>
$(function() {
	var $commonGnb = $('#commonGnb');
	$commonGnb.addClass('gnb').addClass('width_full_size').addClass('text_center');
	$commonGnb.find('li:nth-child(1)').click(function(){
		alert('회원가입 가시!');
		goPage('${context.path}/patient/join');
	});
	$commonGnb.find('li:nth-child(2)').click(function(){
		alert('로그인 가기!');
		goPage('${context.path}/login');
	});
	$commonGnb.find('li:nth-child(3)').click(function(){
		alert('게시판 가기!');
		goList('${context.path}/board/list');
	});
});
</script>