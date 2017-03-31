
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
<link rel="stylesheet" href="${css}/hanbit.css" />
</head>
<body>
<div style="height:100px"></div>
<div id="container" class="width_full_size" style="height:600px;">
<table class="table_default margin_center" style="width:500px;height:200px;margin-top:15px;">
	<tr>
		<td rowspan="3">
		<img src="${context.img}/common/default_image.jpg" width="150px" height="150px" class="image_center margin_center"/></td>
		<th>id</th>
		<td>${doctor.id}</td>
	</tr>
	<tr>
		<th>소속</th>
		<td>${doctor.major}</td>
	</tr>
	<tr>
		<th>성별</th>
		<td>${doctor.gen}</td>
	</tr>
	<tr>
		<td rowspan="2" class="text_center" style="font-size:20px;">
		${doctor.name}<span style="font-size:10px;"> ${doctor.position}</span></td>
		<th>전화번호</th>
		<td>${doctor.phone}</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${doctor.email}</td>
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
</body>
</html>