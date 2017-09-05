
package DBC;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletRequest;
import java.sql.*;   
import javax.sql.*;    
import javax.naming.*;
import javax.sql.DataSource;


public class DatabaseConnect extends HttpServlet
{
	private static String username;
	private static String password;
	private static String kind;
	private static final String driver="com.mysql.jdbc.Driver";
	
	private static Connection conn=null;
	
	
	
    static 
    {
    	try{
    		Class.forName(driver);
    	}catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}
    }
    public static Connection getConnection(char x) throws Exception
    {
    	/*if(conn==null)
    	{
    		
    		conn=DriverManager.getConnection(url, username, password);
    	
    		return conn;
    	}
    	return conn;*/
    	//只有写成如下代码才可以实现多次查询
    	
    	System.out.println("*2"+kind);
    
    	if(x=='a'){
    		DataSource ds = null;  
    		InitialContext ctx=new InitialContext();        
    		ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysqla");	
    	    try {
    		   conn = ds.getConnection();  
    		  
		    } catch (Exception e) {
			System.out.println("vv"+e.getMessage());
		   }
    	}
    	else if(x=='b')
    	{
    		DataSource ds = null;  
    		InitialContext ctx=new InitialContext();	        
    		ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysqlb");
    	    try {
    		   conn = ds.getConnection(); 
    		   
		    } catch (Exception e) {
			System.out.println("vv"+e.getMessage());
		    }
    	}
    
    	
    	return conn ;
    }
   
    public void close() {
		try {
			this.conn.close() ;
		}
		catch (Exception e) {
		}
	}
    
   
}

