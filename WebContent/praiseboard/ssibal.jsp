<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
    .accordion {width:200px; border:1px solid #ccc;}
    .accordion ul {margin:0; padding:0; list-style-type:none;}
    .accordion li {margin:0; padding:0; list-style-type:none;}
    .accordion p {margin:0; padding:2px;}
    .accordion p {cursor:pointer;}
    .accordion a {display:block; padding:3px 0; border-bottom:1px sodid #ccc; text-decoration:none;background:#eee;}
</style>
<script type="text/javascript">
$(function(){
    $(".submenu").hide();
    $(".left").click(function(){
        $(".submenu:visible").slideUp("middle");
        $(this).next('.submenu:hidden').slideDown("middle");
        return false;
    })
});
</script>
<div class="accordion">
    <p class="left">1���޴�</p>
    <ul class="submenu">
        <li><a href="#">1�� ����޴�</a></li>
        <li><a href="#">1�� ����޴�</a></li>
        <li><a href="#">1�� ����޴�</a></li>
    </ul>
    <p class="left">2���޴�</p>
    <ul class="submenu">
        <li><a href="#">2�� ����޴�</a></li>
        <li><a href="#">2�� ����޴�</a></li>
        <li><a href="#">2�� ����޴�</a></li>
    </ul>
    <p class="left">3���޴�</p>
    <ul class="submenu">
        <li><a href="#">3�� ����޴�</a></li>
        <li><a href="#">3�� ����޴�</a></li>
        <li><a href="#">3�� ����޴�</a></li>
    </ul>
</div>