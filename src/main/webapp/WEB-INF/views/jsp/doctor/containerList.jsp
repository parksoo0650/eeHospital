<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/hanbit.css" />
<style>
	[title~=cheif]{
		border: 5px solid blue;
	}
</style>
</head>
<body>
<div id="wrapper" class="width_full_size" style="height:100%;">
<div id="header" class="width_full_size position_fixed" style="height:100px">
<div class="logo_box width_full_size" style="height:60%;">
<img src="../../images/common/index_logo.png" class="image_center" />

</div>
	<ul class="gnb width_full_size text_center" style="height:40%">
		<li><a  href="../common/join.html" >회원가입</a></li>
		<li><a  href="../common/login.html">로그인</a></li>
		<li><a  href="../bbs//bbs_list.html">자유게시판</a></li>
		<li><div class="dropdown">
		<a href="../admin/admin.html">관리자모드</a>
		<div class="dropdown_content">		
			<p><a href="staff/doctors.html" style="color:black;">의사</a></p>
	 		<p><a href="" style="color:black;">간호사</a></p>
	 		<p><a href="" style="color:black;">환자</a></p>
	  		<p><a href="" style="color:black;">진료</a></p>
	  		<p><a href="" style="color:black;">차트</a><p>
	  		</div>
		</div>
		</li>
			<li><div class="tooltip"><a href="#">병원소개</a>
  			<span class="tooltiptext">구현되지 않은 기능입니다.</span>
			</div>
		</li>
	</ul>	

</div>
<div style="height:100px"></div>
<div id="container" class="width_full_size" style="height:600px;">
<!-- Content Begin -->
<div class="gallery">
  <a target="_blank" href="staff_detail.html"  >
    <img src="../../images/staff/captin.png"  title="cheif" style="width:240px;height:300px;">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="../images/doctors/iron.jpg">
    <img src="../../images/staff/iron.jpg" alt="Forest">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="../images/doctors/hulk.jpg">
    <img src="../../images/staff/hulk.jpg" >
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="../images/doctors/vision.jpg">
    <img src="../../images/staff/vision.jpg" alt="Mountains">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="staff_detail.html">
    <img src="../../images/staff/red.jpg" alt="Mountains">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>
<!-- Content End -->
</div>
	<div id="footer" class="width_full_size" style="height:80px;border-top: 2px solid #5a5a5a;">
	<dl class="notice" style="margin-left:40px;">
		<dt><a href="/NOTICE" class="h_notice">공지사항</a></dt>
	</dl>
	<dl class="policy">
		<dt>네이버 정책 및 약관</dt><!-- class="blind" -->
		<dd class="f"><a href="http://www.navercorp.com/" target="_blank" id="plc.intronhn">회사소개</a></dd>
		<dd><a href="http://mktg.naver.com/" id="plc.adinfo">광고</a></dd>
		<dd><a href="https://submit.naver.com/" id="plc.search">마이비즈니스</a></dd>
		<dd><a href="https://www.navercorp.com/ko/company/proposalGuide.nhn" target="_blank" id="plc.contact">제휴제안</a></dd>
		<dd><a href="rules/service.html" id="plc.service">이용약관</a></dd>
		<dd><a href="rules/privacy.html" id="plc.privacy"><strong>개인정보처리방침</strong></a></dd>
		<dd><a href="rules/youthpolicy.html" id="plc.youth">청소년보호정책</a></dd>
		<dd><a href="rules/spamcheck.html" id="plc.policy">네이버 정책</a></dd>
		<dd><a href="https://help.naver.com/" id="plc.helpcenter">네이버 고객센터</a></dd>
	</dl>
	<address>&copy; <strong><a href="http://www.navercorp.com/" target="_blank">NAVER Corp.</a></strong></address>
	</div>
</div>
</body>
</html>