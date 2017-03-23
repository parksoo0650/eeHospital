<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${css}/hanbit.css" />
<div id="container" class="width_full_size" style="height:800px;">

	<form id="regForm" action="patRegister.jsp" style="width:40%;margin-top:15px;" class="margin_center" >
		<table class="table_default">
			<tr>
				<td>
					<select name="doctor">
						<option value="" selected>의사선택</option>
						<option value="dhong">피부과: 홍길동</option>
						<option value="dahn">내과: 안성기</option>
						<option value="akim">외과: 김민종</option>
						<option value="akim2">소아과: 김연아</option>
					</select> 
				</td>
			</tr>
				<tr>
				<td>
					<select name="nurse">
						<option value="" selected>의사선택</option>
						<option value="dhong">피부과: 홍길동</option>
						<option value="dahn">내과: 안성기</option>
						<option value="akim">외과: 김민종</option>
						<option value="akim2">소아과: 김연아</option>
					</select> 
				</td>
			</tr>
			<tr>
				<td class="color_blue">한글 또는 영문으로 입력해 주세요</td>
			</tr>
			<tr>
				<td>ID<input type="text" name="id" value="아이디" size="20">
				<input type="button" value="중복확인">
				<p>아이디을 입력하세요</td>
			</tr>
			<tr>
				<td>ID<input type="text" name="name" value="이름" size="20">
				<p>이름을 입력하세요</td>
			</tr>
			<tr>
				<td><input type="email" name="email" value="E-mail" size="20">
				<p>LPOINT아이디는 자주 사용하시는 이메일주소로 입력해주세요</td>
			</tr>
			<tr>
				<td><input type="password" name="password" value="비밀번호"
					size="20">
				<p>8~15자의 영문자,숫자,특수문자를 함께 입력해주세요</td>
			</tr>
			<tr>
				<td><input type="password" name="password" value="비밀번호확인"
					size="20">
				<p></td>
			</tr>
			<tr>
				<td><input type="text" name="addr" value="주소">
				<p>주소를 입력하세요</td>
			</tr>
			<tr>
				<td><select name="birthyear">
						<option value="" selected>생년선택</option>
						<option value="1992">1992</option>
				</select> <select name="birthmonth">
						<option value="월">월</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
				</select> <select name="birthday">
						<option value="일">일</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
				</select><br /><br />
				<input type="text" name="ssn1" size="8" value="" onchange=""/>-<input type="text" name="ssn2" size="8"/>
				<p></td>
			</tr>
			<tr>
				<td><select name="telecom">
						<option value="SKT">SKT</option>
						<option value="KT">KT</option>
						<option value="LGU+">LGU+</option>
				</select> <select name="pnum1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="017">017</option>
				</select><input type="tel" name="pnum2" size="4">
				<input type="tel" name="pnum3" size="4">
				<p></td>
			</tr>
			<tr>
			<td>
			직업(두개 이상 선택 가능, 단 스탭은 병원관계자만 클릭하세요)
			</td>
			</tr>
			
<!-- job: 회사원 employee 개발자 developer 스탭 staff 요리사 cook 선생 teacher 학생 student -->
			<tr>
				<td>
				<input type="checkbox" name="job" value="employee">회사원
				<input type="checkbox" name="job" value="develpler">개발자
				<input type="checkbox" name="job" value="staff">스탭
				<input type="checkbox" name="job" value="cook">요리사
				<input type="checkbox" name="job" value="teacher">선생
				<input type="checkbox" name="job" value="student">학생
			</td>
			</tr>
		</table>
		<span class="color_blue">*선택항목에 동의하지 않으셔도 정상적인 서비스를 이용하실수 있습니다.</span>
		<input type="hidden" name="action" value="register"/>
		<input type="hidden" name="page" value="main"/>
		<div>
		<a href="#" id="" class="button_link button_visited button_action button_hover" style="width:180px;">이전</a>
		<a href="#" id="regNext" class="button_link button_visited button_action button_hover" style="width:180px;">다음</a>
		</div>
	</form>
</div>
<jsp:include page="../common/footer.jsp"/>
<script>
$(function() {
	var $regForm=$('#regForm');
	var tab = $regForm.find('table');
	$('#regNext').click(function() {
		$regForm.attr("action","${context}/patient.do");
		$regForm.attr("method","post");
		alert('전송직전');
		$regForm.submit();	
	})
});
</script>