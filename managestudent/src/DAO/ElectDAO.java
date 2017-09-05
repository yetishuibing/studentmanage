package DAO;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import DBC.DatabaseConnect;
import VO.*;
public class ElectDAO {
	
	public Vector ScSelect(String sid)throws Exception{
		Vector all=new Vector();
		String sql="SELECT course.`cour-id`,course.`cour-name`, elect.`cour-grade`, course.`credit`, elect.`stu-id` FROM elect,course where elect.`cour-id`=course.`cour-id` and elect.`stu-id`='"+sid+"';";
		System.out.println(sql);
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
			stmt = dbc.getConnection('a').createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Elect cou=new Elect();
				cou.setCourid(rs.getString("cour-id"));
				cou.setCourgrade(rs.getString("cour-grade"));
				all.addElement(cou);
				
			}
			System.out.println("11111111");
			System.out.println(all.size());
			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new Exception("查询中出现错误！！！");
		} finally {
			dbc.close();
		}
		return all;
		
	}
	
	public Vector ScSelect1(String sid)throws Exception{
		Vector all=new Vector();
		String sql="SELECT elective_course.`eid`,elective_course.`cname`,stu_ele_course.`sid` FROM stu_ele_course,elective_course where stu_ele_course.`eid`=elective_course.`eid` and stu_ele_course.`sid`='"+sid+"';";
		System.out.println(sql);
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
			stmt = dbc.getConnection('b').createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Elect cou=new Elect();
				cou.setEid(rs.getString("eid"));
				
				all.addElement(cou);
				
			}
			System.out.println("11111111");
			System.out.println(all.size());
			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new Exception("查询中出现错误！！！");
		} finally {
			dbc.close();
		}
		return all;
		
	}
	
	
	
	
	
	public Vector SelectTeacher(String sid)throws Exception{
		Vector all=new Vector();
		String sql="SELECT elect.`cour-id`, course.`cour-name`, course.`credit`, teacher.`tea-id`,teacher.`tea-name` FROM elect,course,teacher where elect.`stu-id`='"+sid+"' and elect.`cour-id`=course.`cour-id` and course.`cour-id`=teacher.`cour-id`;";
		System.out.println(sql);
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
			stmt = dbc.getConnection('a').createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Teacher cou=new Teacher();
				cou.setTeaid(rs.getString("tea-id"));
				cou.setCourid(rs.getString("cour-id"));
				
				cou.setTeaname(rs.getString("tea-name"));
				all.addElement(cou);
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
	public Vector SelectStudent(String sid)throws Exception{
		Vector all=new Vector();
		String sql="SELECT student.`stu-id`, student.`name`, course.`credit`, elect.`cour-id`, elect.`cour-grade` FROM elect,student,course where elect.`stu-id`=student.`stu-id` and elect.`cour-id`=course.`cour-id` ORDER BY elect.`cour-grade` DESC;";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		try{
			stmt = dbc.getConnection('a').createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				student cou=new student();
				cou.setId(rs.getString("stu-id"));
				cou.setName(rs.getString("name"));
				all.addElement(cou);
				
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
	
	public Vector SelectCourse(String sid)throws Exception{
		Vector all=new Vector();
		String sql="SELECT course.`cour-id`,course.`cour-name`, elect.`cour-grade`, course.`credit`, elect.`stu-id` FROM elect,course where elect.`cour-id`=course.`cour-id` and elect.`stu-id`='"+sid+"';";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		System.out.println(sql);
		try{
			stmt = dbc.getConnection('a').createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Course cou=new Course();
				cou.setCourid(rs.getString("cour-id"));
				cou.setCourcredit(rs.getString("credit"));
				cou.setCourname(rs.getString("cour-name"));
				all.addElement(cou);
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
	
	
	public Vector SelectCourse1(String sid)throws Exception{
		Vector all=new Vector();
		String sql="SELECT elective_course.`eid`,elective_course.`cname`,stu_ele_course.`sid` FROM stu_ele_course,elective_course where stu_ele_course.`eid`=elective_course.`eid` and stu_ele_course.`sid`='"+sid+"';";
		Statement stmt=null;
		DatabaseConnect dbc=null;
		dbc=new DatabaseConnect();
		System.out.println(sql);
		try{
			stmt = dbc.getConnection('b').createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Course cou=new Course();
				cou.setEid(rs.getString("eid"));
				
				cou.setCname(rs.getString("cname"));
				all.addElement(cou);
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
	
	
	
	
}
