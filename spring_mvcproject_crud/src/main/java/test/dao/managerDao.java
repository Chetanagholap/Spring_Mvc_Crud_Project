package test.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import test.beans.manager;

public class managerDao
{

	JdbcTemplate t1;
	
	

  public void setT1(JdbcTemplate t1) {
		this.t1 = t1;
	}






public int registerData(manager m1)
    {
		 
		
		
		return t1.update("insert into manager(mname,memail,mpass,mcpass) values('"+m1.getMname()+"','"+m1.getMemail()+"','"+m1.getMpass()+"','"+m1.getMcpass()+"')");
	}
	

public List<manager> displayall()
{
	return t1.query("select*from manager", new RowMapper() {

		@Override
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			
			
			manager mr=new manager();
			
			mr.setMid(rs.getInt(1));
			mr.setMname(rs.getString(2));
			mr.setMemail(rs.getString(3));
			mr.setMpass(rs.getString(4));
			mr.setMcpass(rs.getString(5));
			return mr;
		}
		
		
		
	});
}






    public int deledata(int id)
     {
	return t1.update("delete from manager where mid='"+id+"'");
	   
	
      }






	public List<manager> editrecord(int id) 
	{
		

		return t1.query("select*from manager where mid='"+id+"'", new RowMapper() 
		{

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				
				
				manager mr=new manager();
				
				mr.setMid(rs.getInt(1));
				mr.setMname(rs.getString(2));
				mr.setMemail(rs.getString(3));
				mr.setMpass(rs.getString(4));
				mr.setMcpass(rs.getString(5));
				
				return mr;
			}
			
			
			
		});
		
	}






	public int updatemanagerinfo(manager mg) 
	{
		
		return t1.update("update manager set mname='"+mg.getMname()+"', memail='"+mg.getMemail()+"', mpass='"+mg.getMpass()+"', mcpass='"+mg.getMcpass()+"' where mid='"+mg.getMid()+"'");
		
	}






	
	
}
