<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="VO.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>学生选课成绩</title>
    <base href="<%=basePath%>">
    <title></title>
  </head>
  <jsp:useBean id="scdao" scope="page" class="DAO.ElectDAO"></jsp:useBean>
  <jsp:useBean id="sdao" scope="page" class="DAO.StudentDAO"></jsp:useBean>
  <body bgcolor="">
  <%
  System.out.println("0000001");
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
Vector student=null;
Vector all=null;
Vector all1=null;
if(id.indexOf("003")>0){
   student=sdao.Select(id,"");
   all=scdao.ScSelect(id);
   all1=scdao.SelectCourse(id);


 
student stu=new student();

if(student.size()!=0){
    stu=(student)student.elementAt(0);
  
}



int n=all.size();
int n1=all1.size();

 System.out.println(n);
  System.out.println(n1);
   
Elect cou[]=new Elect[n];
 
Course cou1[]=new Course[n];
 
Teacher cou2[]=new Teacher[n];

 %>
   <div align="center"><font size="5" color="#000080" face="华文宋体"><b><%=stu.getName() %>课程信息如下：<br><br></b></font></div>
     <table border="1" cellspacing="0" cellpadding="0" align="center">
     <tr align="center"><td width="100">课序号</td><td width="150">课程名</td><td width="100">课程学分</td><td width="100">课程成绩</tr>
	<%
	for(int j=0,j1=0;j<n&&j1<n;j++,j1++){
	 //System.out.println("0000009");
	       cou[j]=(Elect)all.elementAt(j);
	
	        String rcno = cou[j].getCourid() ;
	
	        String rcgrade = cou[j].getCourgrade() ;
	        cou1[j1]=(Course)all1.elementAt(j);
	
	       String rcname = cou1[j1].getCourname() ;
	
	       String rcredit = cou1[j1].getCourcredit() ;
	
	
	%>
	
	<%
	
	
	%>
	
	<%
	
	%>
        <tr align="center">
		    		
		    		<td><%=rcno%></td>
		    		<td><%=rcname%></td>
		    		<td><%=rcredit%></td>
		    	
		    		<td><%=rcgrade%></td>
		    		
		    		
					
				</tr>    	
			
	<% 
	}
	}
	else if(id.indexOf("001")>0)
    {
      student=sdao.Select1(id);
      all=scdao.ScSelect1(id);
      all1=scdao.SelectCourse1(id);
    
    System.out.println("0000002");
	student stu=new student();
 	System.out.println("0000003");
		if(student.size()!=0){
    	stu=(student)student.elementAt(0);
     	System.out.println("0000004");
		}
 	System.out.println("0000005");

//Vector all2=scdao.SelectTeacher(id);
	int n=all.size();
	int n1=all1.size();
//int n2=all2.size();
 System.out.println(n);
  System.out.println(n1);
   //System.out.println(n2);
	Elect cou[]=new Elect[n];
 	System.out.println("0000006");
	Course cou1[]=new Course[n];
 	System.out.println("0000007");
	Teacher cou2[]=new Teacher[n];
 	System.out.println("0000008");
 %>
   <div align="center"><font size="5" color="#000080" face="华文楷体"><b><%=stu.getName() %>课程信息如下：<br><br></b></font></div>
     <table border="1" cellspacing="0" cellpadding="0" align="center">
     <tr align="center"><td width="100">课序号</td><td width="150">课程名</td><td width="100">课程学分</td><td width="100">课程成绩</tr>
	<%
	for(int j=0,j1=0;j<n&&j1<n;j++,j1++){
	 //System.out.println("0000009");
	       cou[j]=(Elect)all.elementAt(j);
	
	        String rcno = cou[j].getEid() ;
	
	        
	        String rcgrade = cou[j].getCourgrade() ;
	        cou1[j1]=(Course)all1.elementAt(j);
	
	       String rcname = cou1[j1].getCname() ;
	
	       String rcredit = cou1[j1].getCourcredit() ;
	
	%>
	
	<%
	
	
	%>
	
	<%
	
	
	%>
        <tr align="center">
		    		
		    		<td><%=rcno%></td>
		    		<td><%=rcname%></td>
		    		
		    			<td><%=rcredit%></td>
		    	
		    		<td><%=rcgrade%></td>
		    		
		    		
					
				</tr>    	
			
	<% 
	}
	//}}
	if(n==0){	
	%>
	<tr><th colspan="7">无课程信息！</th></tr>
	<%}   }
	%>
	
	
	
	
	
	
	
	</table>
  </body>
</html>
