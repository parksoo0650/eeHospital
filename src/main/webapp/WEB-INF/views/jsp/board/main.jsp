<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/hanbit.css" />
</head>
<body style="background-image: url('images/bg_image.jpg');">
<div id="wrapper" class="width_full_size" style="height:100%;">
<div id="header" class="width_full_size position_fixed" style="height:100px">
<div class="logo_box width_full_size" style="height:60%;">
<img src="../../images/index/index_logo.png" class="image_center" />

</div>
	<ul class="gnb width_full_size text_center" style="height:40%">
		<li><a  href="../common/join.html" >회원가입</a></li>
		<li><a  href="../common/login.html">로그인</a></li>
		<li><a  href="../bbs/bbs_list.html">자유게시판</a></li>
		<li><div class="dropdown">
		<a href="../admin/admin.html">관리자모드</a>
		<div class="dropdown_content">		
			<p><a href="../staff/doctors.html" style="color:black;">의사</a></p>
	 		<p><a href="../staff/nurses.html" style="color:black;">간호사</a></p>
	 		<p><a href="../customer/patients.html" style="color:black;">환자</a></p>
	  		<p><a href="../chart/chart_list.html" style="color:black;">진료</a></p>
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
<!-- Content Here !! -->
<table class="table_default margin_center" style="width:78%;height:200px;margin-top:15px;">
	<tr class=" bg_color_gray color_white">
		<th style="width:1%;">no</th>
		<th style="width:30%;">제목</th>
		<th style="width:5%;">작성자</th>
		<th style="width:5%;">작성일</th>
		<th style="width:5%;">조회수</th>
	</tr>
	<tr>
		<td>100</td>
		<td>hello</td>
		<td>dummy</td>
		<td>2017-01-13</td>
		<td>10</td>
	</tr>
	<tr>
		<td>99</td>
		<td>병원 후기입니다.</td>
		<td>oracle1256</td>
		<td>2017-01-11</td>
		<td>20</td>
	</tr>
	<tr>
		<td>98</td>
		<td>세브란스</td>
		<td>aaa</td>
		<td>2017-01-09</td>
		<td>10</td>
	</tr>
	<tr>
		<td>97</td>
		<td>신촌역</td>
		<td>Gerad</td>
		<td>2017-01-05</td>
		<td>5</td>
	</tr>
		<tr>
		<td>96</td>
		<td>bbb</td>
		<td>silva</td>
		<td>2017-01-01</td>
		<td>7</td>
	</tr>
</table>
<ul class="text_center display_inline">
	<li>1   2   3   4   5  ></li>
</ul>
</div>

	<div id="footer" class="width_full_size" style="height:80px;border-top: 2px solid #5a5a5a;">
	<dl class="notice" style="margin-left:40px;">
		<dt><a href="/NOTICE" class="h_notice">공지사항</a></dt>
	</dl>
	<dl class="policy">
		<dt>네이버 정책 및 약관</dt>
		<dd class="f"><a href="http://www.navercorp.com/" id="plc.intronhn">회사소개</a></dd>
		<dd><a href="http://mktg.naver.com/" id="plc.adinfo">광고</a></dd>
		<dd><a href="https://submit.naver.com/" id="plc.search">마이비즈니스</a></dd>
		<dd><a href="https://www.navercorp.com/ko/company/proposalGuide.nhn" id="plc.contact">제휴제안</a></dd>
		<dd><a href="rules/service.html" id="plc.service">이용약관</a></dd>
		<dd><a href="rules/privacy.html" id="plc.privacy">개인정보처리방침</a></dd>
		<dd><a href="rules/youthpolicy.html" id="plc.youth">청소년보호정책</a></dd>
		<dd><a href="rules/spamcheck.html" id="plc.policy">네이버 정책</a></dd>
		<dd><a href="https://help.naver.com/" id="plc.helpcenter">네이버 고객센터</a></dd>
	</dl>
	<address>&copy;<a href="http://www.navercorp.com/">NAVER Corp.</a></address>
	</div>
</div>
</body>
</html>