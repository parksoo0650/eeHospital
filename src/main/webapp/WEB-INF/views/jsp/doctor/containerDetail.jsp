
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
<link rel="stylesheet" href="${css}/hanbit.css" />
</head>
<body>
<div id="wrapper" class="width_full_size" style="height:100%;">
<div id="header" class="width_full_size position_fixed" style="height:100px">
<div class="logo_box width_full_size" style="height:60%;">
<img src="${img}/common/index_logo.png" class="image_center" />
</div>
<div class="gnb width_full_size" style="height:40%">
	<ul class="gnb">
		<li><a href="../common/join.html" >회원가입</a></li>
		<li><a href="../common/login.html">로그인</a></li>
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
</div>
</div>
<div style="height:100px"></div>
<div id="container" class="width_full_size" style="height:600px;">
<table class="table_default margin_center" style="width:500px;height:200px;margin-top:15px;">
	<tr>
		<td rowspan="3">
		<img src="${img}/common/default_image.jpg" width="150px" height="150px" class="image_center margin_center"/></td>
		<th>id</th>
		<td>000604</td>
	</tr>
	<tr>
		<th>소속</th>
		<td>내과</td>
	</tr>
	<tr>
		<th>성별</th>
		<td>남</td>
	</tr>
	<tr>
		<td rowspan="2" class="text_center" style="font-size:20px;">
		안성기<span style="font-size:10px;"> 과장</span></td>
		<th>전화번호</th>
		<td>011-222-0987</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>ask@ask@banbh.com</td>
	</tr>
</table>
<ul class="width_full_size text_center display_inline">
	<li>
		<a href="#" class="button_link button_visited button_action button_hover">환자</a>
		<a href="#" class="button_link button_visited button_action button_hover">차트</a>
		<a href="#" class="button_link button_visited button_action button_hover">진료</a>
	</li>
</ul>
</div>
<jsp:include page="../common/footer.jsp" />
</div>

</body>
</html>