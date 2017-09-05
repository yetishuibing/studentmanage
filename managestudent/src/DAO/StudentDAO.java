package DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import VO.*;
import DBC.DatabaseConnect;
public class StudentDAO {
	public ArrayList<student> getAllstudent(char x)
	{
       Connection conn=null;
       PreparedStatement stmt=null;
       ResultSet rs=null;
       ArrayList<student> list=new ArrayList<student>();//学生信息集合
      
       try
       {
    	  if(x=='a'){
    		 
    	     conn=DatabaseConnect.getConnection('a');
    	     String sql= "select `stu-id`,`name`,`sex`,`nation`,`birth`,`clas`,`enrollment_date`,`hobby`,`password` from `student`;";//SQL语句
    	     System.out.println(sql);
    	     stmt=conn.prepareStatement(sql);
    	     rs=stmt.executeQuery();
    	     while(rs.next())
    	     {
    		
    		  student stu=new student();
    		  stu.setId(rs.getString("stu-id"));
    		  stu.setPassword(rs.getString("password"));
    		 
    		  list.add(stu);//把一个学生加入语句
    		
    		  
    	     }
    	   }
    	  else{
    		  System.out.println("@12");
    	     conn=DatabaseConnect.getConnection('b');  
    	    System.out.println("@13");
    	    String sql= "select `sid`,`password` from `student`;";//SQL语句
    	    System.out.println(sql);
    	  stmt=conn.prepareStatement(sql);
    	  rs=stmt.executeQuery();
    	  while(rs.next())
    	  {
    		
    		  student stu=new student();
    		  stu.setId(rs.getString("sid"));
    		  stu.setPassword(rs.getString("password"));
    		  
    		  list.add(stu);//把一个学生加入语句
    		
    		  
    	     }
    	  }
    	  return list;//返回集合
       
       }
       catch(Exception ex)
       {
    	   ex.printStackTrace();
    	   return null;
       }
       finally
       {
    	   //释放数据集对象
    	   if(rs!=null)
    	   {
    		   try{
    			   rs.close();
    			   rs=null;
    		   }
    		   catch(Exception ex)
    		   {
    			   ex.printStackTrace();
    		   }
    	   }
           //释放语句对象
    	   if(stmt!=null)
    	   {
    		   try{
    			   stmt.close();
    			   stmt=null;
    		   }
    		   catch(Exception ex)
    		   {
    			   ex.printStackTrace();
    		   }
    	   }
       }
	}
	public void InsertStudent(String sid, String sname, String  ssex, String snation, String sbirth,String sclas,String senrollment_date,String shobby,String spassword) throws Exception{
		String sql="INSERT INTO `student`(`stu-id`, `name`, `sex`, `nation`, `birth`, `clas`, `enrollment_date`, `hobby`,`password`) VALUES ('"+sid+"','"+sname+"','"+ssex+"','"+snation+"','"+sbirth+"','"+sclas+"','"+senrollment_date+"','"+shobby+"','"+spassword+"')";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
	 
		try{
			System.out.println(sql);
			stmt=dbc.getConnection('a').createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
		}catch (Exception e){
			throw new Exception("插入中出现错误！！！");
		}finally {
			dbc.close();
			
		}
	}
	public void InsertStudent1(String sid, String sname, String spassword,String  ssex,String sqq,String stel,String sprov) throws Exception{
		String sql="INSERT INTO `student`(`sid`, `name`,`password`, `sex`, `qq`, `tel`,`province`) VALUES ('"+sid+"','"+sname+"','"+spassword+"','"+ssex+"','"+sqq+"','"+stel+"','"+sprov+"')";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
	 
		try{
			System.out.println(sql);
			stmt=dbc.getConnection('b').createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
		}catch (Exception e){
			throw new Exception("插入中出现错误！！！");
		}finally {
			dbc.close();
			
		}
	}
	
	public void DeletebyID(String sid) throws Exception{
		String sql="DELETE FROM student WHERE `stu-id`='"+sid+"';";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
			System.out.println(sql);
			stmt=dbc.getConnection('a').createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
		}catch (Exception e){
			throw new Exception("删除中出现错误！！！");
		}finally {
			dbc.close();
			
		}
	}
	public void DeletebyID1(String sid) throws Exception{
		String sql="DELETE FROM student WHERE sid='"+sid+"';";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
			System.out.println(sql);
			stmt=dbc.getConnection('b').createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
		}catch (Exception e){
			throw new Exception("删除中出现错误！！！");
		}finally {
			dbc.close();
			
		}
	}
	public Vector Select(String id,String clas)throws Exception{
		Vector all=new Vector();
		System.out.println(clas);
		System.out.println(id);
		String sql1="select * from `student` where ";
		String sql=null;
		if(id!="")
		{
			sql=sql1+"`stu-id` like '%"+id+"%'";
			if(clas!="")
			{
				sql=sql+" and `clas` like '%"+clas+"%'";
			}
			
		}
		else
		{
			if(clas!="")
			{
				sql=sql1+"`clas` like '%"+clas+"%'";
				
			}
			else
			{
				
				
					sql="select * from `student`";
				
			}
		}
		System.out.println(sql);
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
		
			stmt=dbc.getConnection('a').createStatement();
			
			ResultSet rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				  student stu=new student();
	    		  stu.setId(rs.getString("stu-id"));
	    		  stu.setName(rs.getString("name"));
	    		  stu.setNation(rs.getString("nation"));
	    		  stu.setSex(rs.getString("sex"));
	    		  stu.setBirth(rs.getString("birth"));
	    		  stu.setClas(rs.getString("clas"));
	    		  stu.setEnrollment_date(rs.getString("enrollment_date"));
	    		  stu.setHobby(rs.getString("hobby"));
	    			
				  all.addElement(stu);
				
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new Exception("查询中出现错误！！！");
		} finally {
			dbc.close();
		}
		return all;
	}
	
	public Vector Select1(String id)throws Exception{
		Vector all=new Vector();
		String sql1="select * from `student` where ";
		System.out.println("&&7&7");
		String sql=null;
		if(id!="")
		{
			sql=sql1+"`sid` like '%"+id+"%'";
			
			
		}
		if(id=="")
		{
			
				sql="select * from `student`";
				
				
			
		}
		System.out.println(sql);
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
		
			stmt=dbc.getConnection('b').createStatement();
		
			ResultSet rs=stmt.executeQuery(sql);
		
			while(rs.next()) {
			
				  student stu=new student();
	    		  stu.setSid(rs.getString("sid"));
	    		  stu.setName(rs.getString("name"));
	    		  stu.setSex(rs.getString("sex"));
	    		  stu.setQq(rs.getString("qq"));
	    		  stu.setTel(rs.getString("tel"));
	    		  stu.setProvince(rs.getString("province"));
	    		 
	    		
				  all.addElement(stu);
					
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new Exception("查询中出现错误！！！");
		} finally {
			dbc.close();
		}
		return all;
	}
	
	
	
	public Vector SelectBySid(String id) throws Exception{
		Vector all=new Vector();
		if(id.indexOf("003")>0){
		String sname=null;
		String sql="select * from `student` where `stu-id`='"+id+ "';";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
		
			stmt=dbc.getConnection('a').createStatement();
		
			ResultSet rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				  student stu=new student();
	    		  stu.setId(rs.getString("stu-id"));
	    		  stu.setName(rs.getString("name"));
	    		  stu.setNation(rs.getString("nation"));
	    		  stu.setSex(rs.getString("sex"));
	    		  stu.setBirth(rs.getString("birth"));
	    		  stu.setClas(rs.getString("clas"));
	    		  stu.setEnrollment_date(rs.getString("enrollment_date"));
	    		  stu.setHobby(rs.getString("hobby"));
	    		  stu.setPassword(rs.getString("password"));
	    		  
	    		  
	    		
				  all.addElement(stu);
					
			}
		
		
			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new Exception("查询中出现错误！！！");
		} finally {
			dbc.close();
		}
		}
		if(id.indexOf("001")>0){
			String sname=null;
			String sql="select * from `student` where `sid`='"+id+ "';";
			Statement stmt=null;
			DatabaseConnect dbc=null;
			dbc=new DatabaseConnect();
			try{
				
				stmt=dbc.getConnection('b').createStatement();
				
				ResultSet rs=stmt.executeQuery(sql);
			
				while(rs.next()) {
					
					  student stu=new student();
		    		  stu.setSid(rs.getString("sid"));
		    		  stu.setName(rs.getString("name"));
		    		  stu.setSex(rs.getString("sex"));
		    		  
		    		  stu.setPassword(rs.getString("password"));
		    		  
		    		  stu.setQq(rs.getString("qq"));
		    		  stu.setTel(rs.getString("tel"));
		    		  stu.setProvince(rs.getString("province"));
		    			
					  all.addElement(stu);
						
				}
			
			
				rs.close();
				stmt.close();
			} catch (Exception e) {
				throw new Exception("查询中出现错误！！！");
			} finally {
				dbc.close();
			}
			}
		return all;
		
	}
	public void UpdatebyID(String sid,String sname,String ssex,String snation,String sbirth,String sclas,String senrollment_date,String shobby,String spassword) throws Exception{
		
		String sql="UPDATE `student` set `name`='"+sname+"',`sex`='"+ssex+"',`nation`='"+snation+"',`birth`='"+sbirth+"',`clas`='"+sclas+"',`enrollment_date`='"+senrollment_date+"',`hobby`='"+shobby+"',`password`='"+spassword+"'  WHERE `stu-id`='"+sid+"';";
		System.out.println("修改:"+sql);
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
			stmt=dbc.getConnection('a').createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
		}catch (Exception e){
			throw new Exception("修改中出现错误！！！");
		}finally {
			dbc.close();
			
		}
		
	}
	public void UpdatebyID1(String sid,String sname,String ssex,String spassword,String sqq,String stel,String sprov) throws Exception{
		
		String sql="UPDATE `student` set `name`='"+sname+"',`sex`='"+ssex+"',`qq`='"+sqq+"',`tel`='"+stel+"',`province`='"+sprov+"',`password`='"+spassword+"'  WHERE `sid`='"+sid+"';";
		System.out.println("修改:"+sql);
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		   System.out.println(sql);
		try{
			stmt=dbc.getConnection('b').createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
		}catch (Exception e){
			throw new Exception("修改中出现错误！！！");
		}finally {
			dbc.close();
			
		}
	}
	

}
