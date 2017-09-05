<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>学生成绩管理系统-登录</title>
		<link rel="stylesheet" type="text/css" href="image/style1.css">
		<meta http-equiv="windows-Target">
		
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <style type="text/css">
  #container #box form .main label {
	color: #000000;
	font-weight: bold;
}
  #container #box form .space {
	font-weight: bold;
}
  </style>
<SCRIPT Language="JavaScript">
 <!--
  function isValid()
  {	
  	if(formlogin.id.value == "")
  	{	
  		window.alert("请输入用户名！"); 
 		document.formlogin.elements(0).focus();
  		return  false;
  	}
  	if(formlogin.password.value == "")
  	{
  		window.alert("请输入密码！");
  		document.formlogin.elements(1).focus();
  		return  false; 
  	}
  	formlogin.image();
 }
  -->
  </SCRIPT>
	</head>

	<body>
   <div id="container">
      <div class="logo">
         <a ><img src="images/9.jpg" alt="" width="100%" height="60%"/></a>
      </div>
      <div id="box">
         <form name="formlogin" action="login_slt" method="post" onSubmit="return isValid(this);">
         <p class="main">
         <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;用户名：</label>
       	<input type="text" name="username"></input>
         &nbsp;&nbsp;&nbsp;&nbsp;<label>密码：</label>
         <input type="password" name="password" value=""/>
         </p>
         <p class="space">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        
         <tr height="60">
		<td align="center">
		<input type="radio" name="kind" value="admin" checked />
		管理员
		</td>
	    <td align="center">
		
	    <input type="radio" name="kind" value="student" />
			学生
		</td>
		</tr>
               <input type="submit" value="登录" class="login" style="cursor:pointer;color:white;background:url(images/6.jpg);" />
         </p>
         </form>
     </div>         
   </div>       
  </body>
</html>
