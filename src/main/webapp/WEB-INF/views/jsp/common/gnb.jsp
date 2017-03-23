<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<ul id="commonGnb" style="height:70%;">
		<li><a>고객:회원가입</a></li>
		<li><a>고객:로그인</a></li>
		<li><a>스탭:로그인</a></li>
		<li><a>관리자:로그인</a></li>
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
		alert('jQuery Test!!!');
		goPage('${context.path}/patient/join');
	});
	$commonGnb.find('li:nth-child(2)').click(function(){
		alert('고객 로그인 클릭 했음!!!');
		goPage('${context.path}/patient/login');
	});
	$commonGnb.find('li:nth-child(3)').click(function(){
		alert('스탭 로그인 클릭 했음!!!');
		goPage('${context.path}/doctor/login');
	});
	$commonGnb.find('li:nth-child(4)').click(function(){
		alert('관리자 로그인 클릭 했음!!!');
		goPage('${context.path}/admin/login');
	});
	$commonGnb.find('li:nth-child(5)').click(function(){
		alert('게시판 클릭 했음!!!');
		goList('${context.path}/board/list');
	});
});
</script>