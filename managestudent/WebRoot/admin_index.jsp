<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>管理员：你好！</title>
    <link rel="stylesheet" type="text/css" href="images/mystyle2.css">
    <style type="text/css">
    td {
	font-size: 18px;
	font-family: "宋体";
	color: #9933CC;
}
    </style>
    <title></title>
  </head>
  
<body>
   <%
  request.setCharacterEncoding("utf-8");
  String username=(String)session.getAttribute("username");
  String password=(String)session.getAttribute("password");
// if(username!=null&&password!=null)
		//{
	%>
 

<form name="form1" method="post" action="" >
  <table width="97%"height="80%" align="center" cellpadding="0" cellspacing="0"background="images/14.jpg">
    <tr>
      <td>欢迎进入计科专业学生信息系统</td>
    </tr>
    <tr>
      <td><table width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td width="37%">欢迎你:<%out.println(username); %></td>
          <td width="63%"><%@include file="time.jsp" %>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td width="25%"><a href="admin_stu_sel.jsp" target="main">查询学生信息</td>
          <td width="24%"><a href="admin_stu_add.jsp" target="main">增加学生信息</td>
          <td width="23%"><a href="admin_stu_del.jsp" target="main">删除学生信息</td>
          <td width="7%"><a href="login.jsp" target="main">退出</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
