<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="container">
<form id="loginForm">
<table>
	<tr>
		<td>
		<input type="text" name="id" placeholder="아이디"/>
		</td>
		<td rowspan="2">
		<input id="log" type="submit" value="로그인"/>
		</td>
	</tr>
	<tr>
		<td>
		<input type="password" name="password" placeholder="비밀번호"/>
		</td>
	</tr>
	
</table>
<input type="radio" name="permission" value="patient" checked> 고객
<input type="radio" name="permission" value="doctor"> 의사
<input type="radio" name="permission" value="nurse"> 간호사
<input type="radio" name="permission" value="admin"> 관리자
<input type="hidden" name="action" value="login"/>
<input type="hidden" name="page" value="main"/>

</form>
</div>
<script>
$(function(){
	var $loginForm=$('#loginForm');
	var tab=$loginForm.find('table');

	$('#container').addClass('width_full_size').css('height','300%').addClass('margin_center');
	 $loginForm.addClass('margin_center').css('margin-top','50px').css('margin-left','40%');
	$('#loginForm input[value=로그인]').click(function() {
		var permission=$loginForm.find(':radio[name=permission]:checked').val();
		alert("PERMISSION:"+permission);
		$loginForm.attr("action","${context.path}/"+permission+"/login");
		$loginForm.attr("method","post");
		var idVal=tab.find('input[name=id]').val();
		var pwVal=tab.find('input[name=password]').val();
		if(idVal==''||pwVal==''){
			alert('값을 먼저 입력해주세요');
		}else{
			alert('로그인 하기 위해 입력한 ID 값, PW값'+idVal+'PW='+pwVal);
			$loginForm.submit();
		}
	});

});
</script>
