<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <h2>본인 예약하기</h2>
       
    <h4>진료받으실 분의 주민등록번호(외국인등록번호)를 입력하여 주시기 바랍니다.</h4>
    <br/>
    [고유식별번호 처리에 대한 안내]<br/>
수집하는 고유식별정보 항목 : 주민등록번호, 외국인등록번호<br/>
수집ㆍ이용목적 : 의료보험 적용 여부와 진료예약을 위한 목적<br/>
보유 및 이용 기간 : 의료법에 준함<br/>
개인의 고유식별정보 제공동의는 거부하실 수 있으며, 거부할 경우 서비스 사용이 일부 제한될 수 있습니다.<br/>
<INPUT type=radio name="agree" value="yes" checked>동의합니다.
<INPUT type=radio name="agree" value="no" >동의하지 않습니다.
<br/>

<h4>진료받으실 분의 주민등록번호(외국인등록번호) 또는 병원등록번호 중 하나의 정보를 입력해 주세요.<br/>
보건복지부 고시에 의거 가족이 아닌 제3자에 의한 대리진료가 제한됨을 알려드립니다.</h4>
<form action="detailreservation.do" method="post">
<input type="text" name="name" value="송선호"/></br>
<input type="text" name="jumin1"/>-<input type="text" name="jumin2"/><br/>

<input type="submit" name="ok" value="확인" />
<input type="button" name="cancle" value="취소"/>

</form>