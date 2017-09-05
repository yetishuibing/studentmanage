<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>    
<%@ page import="javax.sql.*"%>     
<%@ page import="javax.naming.*"%> 
<%@ page import="javax.sql.DataSource"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <%

   
DataSource ds = null;  
InitialContext ctx=new InitialContext();
System.out.println("#1");       
ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysqla");
System.out.println("#2");      
Connection conn = ds.getConnection();    
System.out.println("#3");   
%>  
                <%  
                System.out.println("#4");   
    Statement stmt=conn.createStatement();  
    String sql_gun="select * from student" ;  
    ResultSet rs_gun=stmt.executeQuery(sql_gun);  
    System.out.println("#5");   
    while(rs_gun.next())  
    {  
    %>  
                <%=rs_gun.getString("stu-id")%>  
    <%  
     }  
     rs_gun.close();  
     stmt.close();  
     %>  
      
<%conn.close(); %>  
  
<%  
DataSource ds2 = null;  
InitialContext ctx2=new InitialContext();      
ds2=(DataSource)ctx.lookup("java:comp/env/jdbc/mysqlb");      
Connection conn2 = ds2.getConnection();     
%>  
    <%  
    Statement stmt2=conn2.createStatement();  
    String sql_gun2="select * from student" ;  
    ResultSet rs_gun2=stmt2.executeQuery(sql_gun2);  
    while(rs_gun2.next())  
    {  
    %>  
                <%=rs_gun2.getString("sid")%>  
    <%  
     }  
     rs_gun2.close();  
     stmt2.close();  
     %>  
      
<%conn2.close(); %>

  </body>
</html>
