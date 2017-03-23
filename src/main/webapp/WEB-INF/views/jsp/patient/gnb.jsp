<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<ul id="patGnb" style="height:40%">
		<li><a>홈으로</a></li>
		<li><a>마이페이지</a></li>
		<li><a>진료기록</a></li>
		<li><a>게시판</a></li>
		<li style="float:right"><a>로그아웃</a></li>
	</ul>	

<script>
$(function() {
	var patGnb=$('#patGnb');
	patGnb.addClass('gnb').addClass('width_full_size').addClass('text_center');
	patGnb.find('li:nth-child(1)').click(function() {
		alert('마이페이지!!!');
		goPage('${context.path}/home.do' ,'move','main');
	});
	patGnb.find('li:nth-child(2)').click(function() {
		alert('홈으로 가기!!!');
		goPage('${context.path}/patient.do','move','detail');
	});
	patGnb.find('li:nth-child(3)').click(function() {
		alert('홈으로 가기!!!');
		goPage('${context.path}/patient.do','move','treatmentList');
	});
	patGnb.find('li:nth-child(4)').click(function() {
		alert('홈으로 가기!!!');
		goPage('${context.path}/board.do','move','articleList');
	});
	patGnb.find('li:nth-Child(5)').click(function() {
		alert('홈으로 가기!!!');
		goPage('${context.path}/home.do','logout','main');
	});
	
})

</script>