<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>



<SCRIPT LANGUAGE="JavaScript">
<!-- Original:  Kathi O'Shea (Kathi.O'Shea@internet.com) -->
<!-- Web Site:  http://www.web-savant.com/users/kathi/asp -->

<!---Edited by JASKO-->
<!---Web Site : http://www.javascript.co.kr-->

<!-- Begin 
function moveOver()  
{
var boxLength = document.choiceForm.choiceBox.length;
var selectedItem = document.choiceForm.available.selectedIndex;
var selectedText = document.choiceForm.available.options[selectedItem].text;
var selectedValue = document.choiceForm.available.options[selectedItem].value;
var i;
var isNew = true;
if (boxLength != 0) {
for (i = 0; i < boxLength; i++) {
thisitem = document.choiceForm.choiceBox.options[i].text;
if (thisitem == selectedText) {
isNew = false;
break;
      }
   }
} 
if (isNew) {
newoption = new Option(selectedText, selectedValue, false, false);
document.choiceForm.choiceBox.options[boxLength] = newoption;
}
document.choiceForm.available.selectedIndex=-1;
}
function removeMe() {
var boxLength = document.choiceForm.choiceBox.length;
arrSelected = new Array();
var count = 0;
for (i = 0; i < boxLength; i++) {
if (document.choiceForm.choiceBox.options[i].selected) {
arrSelected[count] = document.choiceForm.choiceBox.options[i].value;
}
count++;
}
var x;
for (i = 0; i < boxLength; i++) {
for (x = 0; x < arrSelected.length; x++) {
if (document.choiceForm.choiceBox.options[i].value == arrSelected[x]) {
document.choiceForm.choiceBox.options[i] = null;
   }
}
boxLength = document.choiceForm.choiceBox.length;
   }
}
function saveMe() {
var strValues = "";
var boxLength = document.choiceForm.choiceBox.length;
var count = 0;
if (boxLength != 0) {
for (i = 0; i < boxLength; i++) {
if (count == 0) {
strValues = document.choiceForm.choiceBox.options[i].value;
}
else {
strValues = strValues + "," + document.choiceForm.choiceBox.options[i].value;
}
count++;
   }
}
if (strValues.length == 0) {
alert("���û����� �����ϴ�");
}
else {
alert("������ ���� :\r\n" + strValues);
   }
}
</script>

</HEAD>


<BODY BGCOLOR="#FFFFFF">



<center>
<form name="choiceForm">
<table border=0>
<tr>
<td valign="top" width=175>
Available Content:
<br>
<select name="available" size=10 onchange="moveOver();">
<option value=1>Company News
<option value=2>Industry News
<option value=3>Product Updates
<option value=4>Product Specifications
<option value=5>Order History
<option value=6>Order Status
<option value=7>Contacts
<option value=8>Calendar of Events
<option value=9>Scheduler
<option value=10>Notes
</select>
</td>
<td valign="top">
Your Choices:
<br>
<select multiple name="choiceBox" style="width:150;" size="10">
</select>
</td>
</tr>
<tr>
<td colspan=2 height=10>
<input type="button" value="�����" onclick="removeMe();">
<input type="button" value="Get Selected Values" onclick="saveMe();">
</td>
</tr>
</table>
</form>
</center>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p align=center><INPUT TYPE="button" VALUE=" �ݱ� " onClick="self.close( )"></center> 
<p>
<p>
</BODY>
</HTML>
