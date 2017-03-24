<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.pat_detail {text-align: center; margin:0 auto;}
.pat_detail tr td{border: 1px solid #bbbbbb}
</style>
<div style="relative; top: 50px; text-align:center; width:100%;height: 100%;margin-top:90px;">
      <div class="wtac">
            <table class="pat_detail margin_center">
             <tr style="text-align: left;">
                        <td colspan="5"><div><img src="${context.img}/common/default_image.jpg" alt="" width="160px"/></div></td>
                  </tr>
                  <tr>
                        <td style="width: 60px" rowspan="5"><span style="font-size: 20px">환<br />자<br />정<br />보</span></td>
                        <td style="width: 100px">이름</td>
                        <td style="width: 150px">${name}</td>
                        <td style="width: 100px">직업</td>
                        <td style="width: 150px">${user.patJob}</td>
                  </tr>
                  <tr>
                        <td>생년월일</td>
                        <td>${birth}</td>
                        <td>키</td>
                        <td>180cm</td>
                  </tr>
                  <tr>
                        <td>성별</td>
                        <td>${user.patGen}</td>
                        <td>나이/몸무게</td>
                        <td>/80kg</td>
                  </tr>
                  <tr>
                        <td>전화번호</td>
                        <td>${user.patPhone}</td>
                        <td>혈액형</td>
                        <td>A</td>
                  </tr>
                  <tr>
                        <td>주소</td>
                        <td>${user.patAddr}</td>
                        <td>주치의</td>
                        <td>
                        <a onclick="docDetail()" href="#">한석규</a></td>
                  </tr>
            </table>
            </div>
            <script>
		    function docDetail(){
				alert('의사ID 클릭했음!!!');
				location.href="${context.path}/patient/doctor/han";
			}
    		</script>
</div>

