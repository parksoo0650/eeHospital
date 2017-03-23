<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<ul id="admGnb" class="gnb width_full_size text_center" style="height:40%">
		<li><a>회원가입</a></li>
		<li><a>로그인</a></li>
		<li><a href="../bbs/bbs_list.html">자유게시판</a></li>
		<li><div class="dropdown">
		<a href="../admin/admin.html">관리자모드</a>
		<div class="dropdown_content">		
			<p><a href="../staff/doctors.html" style="color:black;">의사</a></p>
	 		<p><a href="" style="color:black;">간호사</a></p>
	 		<p><a href="" style="color:black;">환자</a></p>
	  		<p><a href="" style="color:black;">진료</a></p>
	  		<p><a href="" style="color:black;">차트</a><p>
	  		</div>
		</div>
		</li>
	</ul>	

<script>
$(function() {
	$('#admGnb').addClass('gnb').addClass('width_full_size').addClass('text_center');
	$('#admGnb').click(function() {
		alert('회원가입 클릭!');
		location.href='${context}/patient.do?action=move&page=registerForm';
	})
	$('admGmnb').click(function() {
		alert('로그인 클릭!');
		location.href='${context}/patient.do?action=move&page=loginForm';
	})
})
</script>