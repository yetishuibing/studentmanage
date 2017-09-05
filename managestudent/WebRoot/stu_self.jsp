<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="VO.*" %>
<%@ page import="DAO.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>学生信息</title>
    <base href="<%=basePath%>">
     <jsp:useBean id="sdao" scope="page" class="DAO.StudentDAO"></jsp:useBean>
    <title></title>
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
     <div align="center"><font size="5" color="#000080" face="华文宋体"><b>学生信息如下：<br><br></b></font></div>
     <table border="1" cellspacing="0" cellpadding="0" align="center">
     
     <tr align="center"><td >学号</td><td>姓名</td><td >性别</td><td>民族</td><td>生日</td><td>班级</td><td>入学时间</td><td>爱好</td><td>QQ</td><td>Tel</td><td>省份</td></tr>
	<%
	for(int j=0;j<i;j++){
	
	stu[j]=(student)vector.elementAt(j);
	String rsid=null;
	if(name.indexOf("003")>0)
	{
	 rsid = stu[j].getId() ;
	}
	else  if(name.indexOf("001")>0)
	{
	   rsid= stu[j].getSid();
	   	   System.out.println("^^^6………………");
	   System.out.println(rsid);
	  }
	String rsname = stu[j].getName();
    String rsex=stu[j].getSex();
  
    String rnation=stu[j].getNation();
    String rbirth=stu[j].getBirth();
    String rsclass = stu[j].getClas() ;
    String renrollment_date=stu[j].getEnrollment_date();
    String rhobby=stu[j].getHobby();
    
  
	
    String rqq = stu[j].getQq() ;
   String rtel=stu[j].getTel();
   String rprov=stu[j].getProvince();
    
	
	
	%>
            	<tr align="center">
		    		<td><%=rsid%></td>
		    		<td><%=rsname%></td>
		       		<td><%=rsex%></td>
		 	    	<td><%=rnation%></td>
					<td><%=rbirth%></td>
					<td><%=rsclass%></td>
					<td><%=renrollment_date%></td>
					<td><%=rhobby%></td>
					
					<td><%=rqq%></td>
					<td><%=rtel%></td>
					<td><%=rprov%></td>
										
					
				</tr>
	<% 
	}
	if(i==0){	
	%>
	<tr><th colspan="11">无该学生信息！</th></tr>
	<%} %>
	</table>
	
	</body>
</html>
	