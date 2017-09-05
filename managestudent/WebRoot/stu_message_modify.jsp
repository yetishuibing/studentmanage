<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="VO.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()

+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>学生信息修改</title>
    <base href="<%=basePath%>">
    <jsp:useBean id="sdao" scope="page" class="DAO.StudentDAO"></jsp:useBean>
    <title></title>
    <SCRIPT Language=javascript>
 <!--
  function isValid()
  {	
  	if(formupdate.sname.value == "")
  	{	
  		window.alert("学生姓名为空！"); 
 		
  		return  false;
  	}
  	if(formupdate.ssex.value=="")
  	{
  	    window.alert("学生性别为空！");
  	  
  	    return  false;
  	}
  	if(formupdate.snation.value=="")
  	{
  	    window.alert("学生民族为空！");
  	  
  	    return  false;
  	}
  	if(formupdate.sbirth.value=="")
  	{
  	    window.alert("学生出生日期为空！");
  	  
  	    return  false;
  	}
  	if(formupdate.senrollment_date.value=="")
  	{
  	    window.alert("学生入学日期为空！");
  	   
  	    return  false;
  	}
  	if(formupdate.shobby.value=="")
  	{
  	    window.alert("学生爱好为空！");
  	    //document.formupdate.elements(5).focus();
  	    return  false;
  	}
  	if(formupdate.spassword.value=="")
  	{
  	    window.alert("学生密码为空！");
  	   
  	    return  false;
  	}
  	formupdate.submit();
 }
  -->
  </SCRIPT>		

  </head>
  
  <body bgcolor="">
    <%
     request.setCharacterEncoding("utf-8");
    String name=(String)session.getAttribute("username");
    String password=(String)session.getAttribute("password");
  
    Vector vector=sdao.SelectBySid(name);
    int i=vector.size();
    student stu[]=new student[i];
    	
     %>
     <div align="center"><font size="5" color="#000080" face="华文宋体"><b>修改学生信息<br><br><br></b></font></div>
     <form name="formupdate" action="student_slt" method="post" onsubmit="return isValid(this);">
     
     <table width="650" border="1" cellspacing="0" cellpadding="0" align="center">
     <tr><th height="25" colspan="2"><input type="hidden" name="action" value="modify"/><font size="4">请在下表输入修改后学生信息</font></th></tr>
	<%
	for(int j=0;j<i;j++){
	stu[j]=(student)vector.elementAt(j);
	String sid=null;
	if(name.indexOf("003")>0)
	{
	   sid = stu[j].getId() ;
	 }
	 if(name.indexOf("001")>0)
	{
	   sid = stu[j].getSid() ;
	 }
	String sname = stu[j].getName() ;
    String ssex = stu[j].getSex() ;
	String snation = stu[j].getNation() ;
    String sbirth=stu[j].getBirth();
    String sclas = stu[j].getClas() ;
    String senrollment_date = stu[j].getEnrollment_date() ;
	String shobby = stu[j].getHobby() ;
    String spassword=stu[j].getPassword();
    System.out.println(spassword);
    
    String sqq = stu[j].getQq() ;
    String stel=stu[j].getTel();
     String sprov=stu[j].getProvince();
     if(name.indexOf("003")>0){
	%>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生学号：</td><td><input type="text" name="sid" value="<%=sid%>" readonly/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生姓名：</td><td><input type="text" name="sname" value="<%=sname %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生性别：</td><td><input type="text" name="ssex" value="<%=ssex %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生民族：</td><td><input type="text" name="snation" value="<%=snation %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生出生日期：</td><td><input type="text" name="sbirth" value="<%=sbirth %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生班级：</td><td><input type="text" name="sclas" value="<%=sclas %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生入学时间：</td><td><input type="text" name="senrollment_date" value="<%=senrollment_date %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生爱好：</td><td><input type="text" name="shobby" value="<%=shobby %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生账号密码：</td><td><input type="text" name="spassword" value="<%=spassword %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
     <tr><td><input type="reset" value="重  置"/></td><td><input type="submit" value="提  交"/></td></tr>
	<% 
	}
	
	 if(name.indexOf("001")>0){
	%>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生学号：</td><td><input type="text" name="sid" value="<%=sid%>" readonly/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生姓名：</td><td><input type="text" name="sname" value="<%=sname %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生性别：</td><td><input type="text" name="ssex" value="<%=ssex %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生QQ：</td><td><input type="text" name="sqq" value="<%=sqq%>" readonly/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生电话：</td><td><input type="text" name="stel" value="<%=stel %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生省份：</td><td><input type="text" name="sprov" value="<%=sprov %>"/></td></tr>
	
	<tr><th colspan="2" height="15"></th></tr>
	<tr><td>学生账号密码：</td><td><input type="text" name="spassword" value="<%=spassword %>"/></td></tr>
	<tr><th colspan="2" height="15"></th></tr>
     <tr><td><input type="reset" value="重  置"/></td><td><input type="submit" value="提  交"/></td></tr>
	<% 
	}
	
	
	
	
	}
	if(i==0){	
	%>
	<tr><th colspan="5">无该学生信息！</th></tr>
	<%} %>

    
      </table>
     </form>
  </body>
</html>