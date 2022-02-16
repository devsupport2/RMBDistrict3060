package com.ui.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ui.dao.ChapterDAO;
import com.ui.model.Chapter;
import com.ui.model.Fellowship;

public class ChapterDAOImpl implements ChapterDAO{


	@Autowired
    private DataSource dataSource;
    public void setDataSource(DataSource dataSource)
    {
        this.dataSource = dataSource;
    }
    JdbcTemplate jdbcTemplate;

    private static final Logger logger = LoggerFactory.getLogger(ChapterDAOImpl.class);
    

	@Override
	public String addChapter(Chapter m) {
			logger.info("***** Add Chapter DAO Impl*****");
     String sql = "insert into chapter (fellowship_id,chapter_username,chapter_password,chapter_email,status, created_by, ip_address) values (?,?,?,?,?,?,?)";

     Connection conn = null;
     
     try
     {
 
     	conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql);
        
       
            ps.setInt(1, m.getFellowship_id());  
            ps.setString(2, m.getChapter_username());
            ps.setString(3, m.getChapter_password());	
			ps.setString(4, m.getChapter_email());
			ps.setString(5, m.getStatus());
			ps.setInt(6, m.getCreatedBy());
			ps.setString(7, m.getIpAddress());	
	
         ps.executeUpdate();
     }
     catch (SQLException e)
     {
         throw new RuntimeException(e);
     }
     finally
     {
         if (conn != null)
         {
             try
             {
                 conn.close();
             }
             catch (SQLException e) {}
         }
     }
     return "Success";
 }

	@Override
	public List<Chapter> getAllChapter() {
		  logger.info("+++++ GET Chapter NAME +++++");
		    List<Chapter> mmp = new ArrayList<Chapter>();
		    String s = "y";
		    String sql = "select *,ff.fellowship_name from chapter ch left join fellowship ff on ch.fellowship_id = ff.fellowship_id where ch.status=?  ";
		    Connection conn = null;
		    try {
		        conn = dataSource.getConnection();
		        PreparedStatement ps = conn.prepareStatement(sql);
		        ps.setString(1, s);
		        Chapter m = null;
		        ResultSet rs = ps.executeQuery();
		        while (rs.next()) {
		            m = new Chapter();
		            
		            m.setFellowship_id(rs.getInt("fellowship_id"));
		            m.setFellowship_name(rs.getString("fellowship_name"));
		           m.setChapter_email(rs.getString("chapter_email"));
		           m.setChapter_id(rs.getInt("chapter_id"));
		           m.setChapter_username(rs.getString("chapter_username"));
		           m.setChapter_password(rs.getString("chapter_password"));
		      
		       
		            mmp.add(m);
		        }
		        rs.close();
		        ps.close();
		        return mmp;
		    } catch (SQLException e) {
		        throw new RuntimeException(e);
		    } finally {
		        if (conn != null) {
		            try {
		                conn.close();
		            } catch (SQLException e) {
		            }
		        }
		    }
		  }
	@Override
	public Chapter getChapterById(int chapte_id) {
		Chapter m = null;
		String sql = "select * from chapter where chapter_id=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, chapte_id);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new Chapter();
			   m.setFellowship_id(rs.getInt("fellowship_id"));
	          
	           m.setChapter_email(rs.getString("chapter_email"));
	           m.setChapter_id(rs.getInt("chapter_id"));
	           m.setChapter_username(rs.getString("chapter_username"));
	           m.setChapter_password(rs.getString("chapter_password"));
		}
		rs.close();
		ps.close();
		
		return m;
	} 
		catch (SQLException e) {
		
			throw new RuntimeException(e);
		} 
			finally {
		if (conn != null) {
			try {
					conn.close();
				} catch (SQLException e) {
			}
		  }
		}

	}
	@Override
	public String editChapter(Chapter m) {
		logger.info("+++++ editChapter +++++");
	   
	  String sql="update chapter set fellowship_id=?,chapter_username=?,chapter_password=?,chapter_email=?,status=?, created_by=?, ip_address=? where chapter_id=?";
	    Connection conn = null;
	    try {
	        conn = dataSource.getConnection();
	        PreparedStatement ps = conn.prepareStatement(sql);
	        
	        System.out.println(">>>>>>>>getChapter_username>>>>>>>>>>>>>>>>"+m.getChapter_id());
	        ps.setInt(1, m.getFellowship_id());  
            ps.setString(2, m.getChapter_username());
            ps.setString(3, m.getChapter_password());	
			ps.setString(4, m.getChapter_email());
			ps.setString(5, m.getStatus());
			ps.setInt(6, m.getCreatedBy());
			ps.setString(7, m.getIpAddress());	
			 ps.setInt(8, m.getChapter_id()); 

	        ps.executeUpdate();
	        return "Success";
	    } catch (SQLException e) {
	    	 System.out.println(">>>>>>>>Error>>>>>>>>>>>>>>>>"+e);
	        return "Data not updated!";
	    } finally {
	        if (conn != null) {
	            try {
	                conn.close();
	            } catch (SQLException e) {
	            }
	        }
	    }
	  }
	@Override
	public void deleteChapter(int chapte_id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Chapter> getFellowshipByPage(int pagesize, int startindex) {
		// TODO Auto-generated method stub
		return null;
	}

}
