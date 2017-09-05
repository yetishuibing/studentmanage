<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>增加学生信息</title>
    <title></title>
 <SCRIPT Language="javascript">
 <!--
  function isValid()
  {	
  	if(formaddstu.sid.value == "")
  	{	
  		window.alert("学号不能为空！"); 
 		document.formaddstu.elements(0).focus();
  		return  false;
  	}
  	if(formaddstu.sname.value == "")
  	{
  		window.alert("姓名不能为空！");
  		document.formaddstu.elements(1).focus();
  		return  false; 
  	}
  	
  	if(formaddstu.sclass.value == "")
  	{
  		window.alert("班级不能为空！");
  		document.formaddstu.elements(3).focus();
  		return  false; 
  	}
  	if(formaddstu.scode.value == "")
  	{
  		window.alert("密码不能为空！");
  		document.formaddstu.elements(4).focus();
  		return  false; 
  	}
  	formaddstu.submit();
 }
  -->
  </SCRIPT>		
  </head>
  
  <body bgcolor="">
  <form name="formaddstu" action="student_slt" method="post" onsubmit="return isValid(this);"><div align="center"> 
   <font color="#0000a0" size="5" face="华文宋体"> <strong>添加学生信息<br><br><br></strong></font> 
    </div>
    <table border="1" width="600" height="120" align="center" cellspacing="0" cellpadding="0">
    <tr><th colspan="2" height="25"><font size="4">请输入学生信息</font></th></tr>
    <tr><td height="20">学生学号：</td><td><input type="text" name="sid"/></td></tr>
    <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">学生姓名：</td><td><input type="text" name="sname"/></td></tr>
    <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">学生班级：</td>
    <td><SELECT name="sclas">
     <OPTION>计科1401</OPTION>
     <OPTION>计科1403</OPTION>
     </SELECT></td></tr>
    <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">登录密码：</td><td><input type="text" name="spassword"/>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">民族：</td><td><input type="text" name="snation"/>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">性别：</td><td><input type="text" name="ssex"/>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">入学时间：</td><td><input type="text" name="senrollment_date"/>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">出生日期：</td><td><input type="text" name="sbirth"/>
    <input type="hidden" name="action" value="new"></td></tr>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">爱好：</td><td><input type="text" name="shobby"/>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">QQ：</td><td><input type="text" name="sqq"/>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">电话：</td><td><input type="text" name="stel"/>
     <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20">省份：</td><td><input type="text" name="sprov"/>
    <input type="hidden" name="action" value="new"></td></tr>
    <tr><th colspan="2" height="15"></th></tr>
    <tr><td height="20"><input type="reset" value="重&nbsp&nbsp置"/></td><td><input type="submit" value="提&nbsp&nbsp交"/></td></tr>
    </table>
    
    </form>
    <br/><br/><br/>
    </body>
</html>
