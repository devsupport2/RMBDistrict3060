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

import com.ui.dao.ManageDistrictFessDAO;
import com.ui.model.Fellowship;
import com.ui.model.ManageDistrictFess;


public class ManageDistrictFessDAOImpl implements ManageDistrictFessDAO{
	
	@Autowired
    private DataSource dataSource;
    public void setDataSource(DataSource dataSource)
    {
        this.dataSource = dataSource;
    }
    JdbcTemplate jdbcTemplate;

    private static final Logger logger = LoggerFactory.getLogger(ManageDistrictFessDAOImpl.class);
    

	@Override
	public String addManageDistrictFess(ManageDistrictFess m) {
		logger.info("*****addManageDistrictFess*****");
	    String sql = "insert into rmb_district_fees (rotary_year,rmb_district_fee,fellowship_id,status,created_by, ip_address) values (?,?,?,?,?,?)";
	    
	    Connection conn = null;
	      
	      try
	      {
	  
	      	conn = dataSource.getConnection();
	        
	      	PreparedStatement ps = conn.prepareStatement(sql);
    	
	        ps.setInt(1, m.getRotary_year());
	        ps.setFloat(2, m.getRmb_district_fee());
	        ps.setInt(3, m.getFellowship_id());
	    
	        ps.setString(4, m.getStatus());
			ps.setInt(5, m.getCreatedBy());
			ps.setString(6, m.getIpAddress());

	          ps.executeUpdate();
	      }
	      catch (SQLException e)
	      {
	    		System.out.println("====== Error"+e);
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
	public  List<ManageDistrictFess> getAllManageDistrictFess() {
	    logger.info("+++++ GET MasterMember By Type +++++");
	    List<ManageDistrictFess> mmp = new ArrayList<ManageDistrictFess>();
			    String s = "y";
			    String sql="select m.rmb_district_fees_id,rr.rotary_year_title,m.fellowship_id,m.rotary_year,m.rmb_district_fee as rmb_district_fee,ff.fellowship_name from rmb_district_fees m left join fellowship ff on ff.fellowship_id = m.fellowship_id left join rotary_year rr on rr.rotary_year_id = m.rotary_year where m.status=?";
			    Connection conn = null;
			    try {
			        conn = dataSource.getConnection();
			        PreparedStatement ps = conn.prepareStatement(sql);
			        ps.setString(1, s);
			        ManageDistrictFess m1 = null;
			        ResultSet rs = ps.executeQuery();
			        while (rs.next()) {
			            m1 = new ManageDistrictFess();
			            
			            m1.setRmb_district_fees_id(rs.getInt("rmb_district_fees_id"));
			        	   m1.setRotaryYearTitle(rs.getString("rotary_year_title"));
			        	   m1.setRotary_year(rs.getInt("rotary_year"));
			        	   m1.setFellowship_id(rs.getInt("fellowship_id"));
			        	   m1.setFellowship_name(rs.getString("fellowship_name"));
			        	   m1.setRmb_district_fee(rs.getFloat("rmb_district_fee"));
				
			        	   mmp.add(m1);
			       
			          
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
	public ManageDistrictFess getManageAdminById(int fellowship_id) {
		ManageDistrictFess m = null;
		String sql = "SELECT * FROM rmb_district_fees where status ='y' and fellowship_id=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, fellowship_id);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new ManageDistrictFess();
			m.setFellowship_id(rs.getInt("fellowship_id"));
	        m.setRmb_district_fee(rs.getFloat("rmb_district_fee"));
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
	public String editManageDistrictFess(ManageDistrictFess m) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteManageDistrictFess(int rmb_district_fees_id) {
		  logger.info("+++++ deleteManageDistrictFess +++++");
			
		    String sql = "update rmb_district_fees set status='n' where rmb_district_fees_id=?";
		    Connection conn = null;
		    try {
		        conn = dataSource.getConnection();
		        PreparedStatement ps = conn.prepareStatement(sql);
		       
		        ps.setInt(1, rmb_district_fees_id);
		        ps.executeUpdate();
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

}
