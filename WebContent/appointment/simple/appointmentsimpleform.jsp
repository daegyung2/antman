<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <h2>간편/비회원 예약하기</h2>
       
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
<br/>

[개인정보 수집 이용에 대한 안내]
수집하는 개인정보 항목 : 이름, 휴대전화번호
수집ㆍ이용목적 : 진료 예약 및 진료 안내
보유 및 이용 기간 : 의료법에 준함
개인정보 수집 이용 동의는 거부하실 수 있으며, 거부할 경우 서비스 사용이 일부 제한될 수 있습니다.<br/>
<INPUT type=radio name="agree" value="yes" checked>동의합니다.
<INPUT type=radio name="agree" value="no" >동의하지 않습니다.
<br/>
<br/>

<form action="appointmentsimple.do" method="post">
<input type="text" name="name" /></br>
<input type="text" name="jumin1"/>-<input type="text" name="jumin2"/><br/>

<input type="submit" name="ok" value="확인" />
<input type="button" name="cancle" value="취소"/>

</form>