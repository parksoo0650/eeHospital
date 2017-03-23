<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
<link rel="stylesheet" href="../../css/hanbit.css" />
</head>
<body style="background-image: url('images/bg_image.jpg');">
<div id="wrapper" class="width_full_size" style="height:100%;">
<div id="header" class="width_full_size position_fixed" style="height:100px">
<div class="logo_box width_full_size" style="height:60%;">
<a href="Templet.html"><img src="../../images/index/index_logo.png" class="image_center"/></a>

</div>
	<ul class="gnb width_full_size text_center" style="height:40%">
		<li><a  href="../common/join.html" >회원가입</a></li>
		<li><a  href="../common/login.html">로그인</a></li>
		<li><a  href="../bbs/bbs_list.html">자유게시판</a></li>
		<li><div class="dropdown">
		<a href="admin.html">관리자모드</a>
		<div class="dropdown_content">		
			<p><a href="" style="color:black;">의사</a></p>
	 		<p><a href="" style="color:black;">간호사</a></p>
	 		<p><a href="" style="color:black;">환자</a></p>
	  		<p><a href="" style="color:black;">진료</a></p>
	  		<p><a href="" style="color:black;">차트</a><p>
	  		</div>
		</div>
		</li>
	</ul>		
</div>
</div>
<div style="height:100px"></div>
<div id="container" class="width_full_size" style="height:600px;">
<div class="width_full_size" style="float: left;margin-top:15px;">
<ul class="lnb" style="float: left; width: 20%">
	  <li><a class="active" href="#home">의사</a></li>
	  <li><a href="#news">간호사</a></li>
	  <li><a href="#contact">환자</a></li>
	  <li><a href="#about">진료</a></li>
	  <li><a href="#about">차트</a></li>
	</ul>
		<table style="width:78%;height:200px;" class="table_default margin_center table_even font_bold">
			<tr>
				<td colspan="8" class="text_center" style="background-color:black;color:white;"><h1>현       황</h1></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>의사ID</th>
				<th>담당진료과</th>
				<th>이름</th>
				<th>성별</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>직위</th>
			</tr>
			<tr class="font_bold">
				<td class="text_center">1</td>
				<td>980312</td>
				<td>소아과</td>
				<td><a href="../staff/staff_detail.html" class="text_left">이태정</a></td>
				<td class="text_center">남</td>
				<td>010-333-1340</td>
				<td>ltj@banch.com</td>
				<td>과장</td>
			</tr>
			<tr class="font_bold">
				<td class="text_center">2</td>
				<td>000601</td>
				<td>내과</td>
				<td>안성기</td>
				<td class="text_center">남</td>
				<td>011-222-0987</td>
				<td>ask@banch.com</td>
				<td>과장</td>
			</tr>
			<tr class="font-bold">
				<td class="text_center">3</td>
				<td>001208</td>
				<td>외과</td>
				<td>김민종</td>
				<td class="text_center">남</td>
				<td>010-333-8743</td>
				<td>kmj@banch.com</td>
				<td>과장</td>
			</tr>
			<tr class="font_bold">
				<td class="text_center">4</td>
				<td>125463</td>
				<td>피부과</td>
				<td>이태서</td>
				<td class="text_center">남</td>
				<td>010-333-1570</td>
				<td>lts@banch.com</td>
				<td>과장</td>
			</tr>
				<tr class="font_bold">
				<td class="text_center">5</td>
				<td>135684</td>
				<td>소아과</td>
				<td>김연아</td>
				<td class="text_center">여</td>
				<td>010-222-1127</td>
				<td>kya@banch.com</td>
				<td>과장</td>
			</tr>
			<tr>
				<td colspan="8" class="text_center" style="border:1px">
				1    2    3    4    5    6    7    8    9    10    >
				</td>
	
			</tr>
		</table>
		</div>
		
</div>

<div id="footer" class="width_full_size" style="height:80px">

<div style="height:100px"></div>
<div id="container" class="width_full_size" style="height:300px;">
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