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

import com.ui.dao.AdvertisementDAO;
import com.ui.model.Advertisement;
import com.ui.model.Slider;

public class AdvertisementDAOImpl implements AdvertisementDAO{

@Autowired
	
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}
	
	JdbcTemplate jdbcTemplate;
	
	private static final Logger logger = LoggerFactory.getLogger(AdvertisementDAOImpl.class);
	@Override
	public List<Advertisement> getAllAdvertisement() {
logger.info("Inside getAllAdvertisement Impl");
		
		List<Advertisement> Slider = new ArrayList<Advertisement>();
		
		String s = "y";
		
		String sql = "select slider_id, slider_title, image, redirect_url, target, active, status, created_by, created_date, ip_address from advertisement where status=? order by slider_id ASC";
		
		Connection conn = null;
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, s);

			Advertisement slider = null;
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next())
			{
				slider = new Advertisement();
				slider.setSliderId(rs.getInt("slider_id"));
				slider.setSliderTitle(  rs.getString("slider_title"));
				slider.setImage(rs.getString("image"));
				slider.setRedirectUrl( rs.getString("redirect_url"));
				slider.setTarget( rs.getString("target"));
				slider.setActive(rs.getString("active"));
				slider.setStatus( rs.getString("status"));
				slider.setCreatedBy(rs.getInt("created_by"));
				slider.setCreatedDate( rs.getString("created_date"));
               slider.setIpAddress(  rs.getString("ip_address"));
                
        
				Slider.add(slider);
           }
           rs.close();
           ps.close();
          
           return Slider;
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
	}

	@Override
	public List<Advertisement> getAllAdvertisementByPage(int pagesize, int startindex) {
logger.info("Inside Get All Advertisement By Page Impl");
		
		List<Advertisement> Slider = new ArrayList<Advertisement>();
		
		String s = "y";
		
		String sql = "select slider_id, slider_title, image, redirect_url, target, active, status, created_by, created_date, ip_address from advertisement where status=? order by slider_id desc limit ?,?";
		
		Connection conn = null;
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, s);
			ps.setInt(2, startindex);
			ps.setInt(3, pagesize);

			Advertisement slider = null;
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next())
			{
				slider = new Advertisement();
					
					slider.setSliderId(rs.getInt("slider_id"));
					slider.setSliderTitle( rs.getString("slider_title"));
					slider.setImage(rs.getString("image"));
					slider.setRedirectUrl( rs.getString("redirect_url"));
					slider.setTarget( rs.getString("target"));
					slider.setActive(rs.getString("active"));
					slider.setStatus( rs.getString("status"));
					slider.setCreatedBy(rs.getInt("created_by"));
					slider.setCreatedDate(rs.getString("created_date"));
		            slider.setIpAddress( rs.getString("ip_address"));
				
				
				Slider.add(slider);
           }
           rs.close();
           ps.close();
          
           return Slider;
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
	}
	@Override
	public List<Advertisement> getActiveAdvertisement() {
logger.info("======================Inside Get Active Sliders Impl=================================");
		
		List<Advertisement> Slider = new ArrayList<Advertisement>();
		
		String s = "y";
		
		String sql = "select slider_id,slider_title, image, redirect_url, target from advertisement where status=? and active=? order by slider_id ";
		
		Connection conn = null;
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, s);
			ps.setString(2, s);

			Advertisement slider = null;
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next())
			{
			
				slider = new Advertisement();	
				slider.setSliderTitle( rs.getString("slider_title"));
				slider.setImage(rs.getString("image"));
				slider.setRedirectUrl( rs.getString("redirect_url"));
				slider.setTarget(rs.getString("target"));
				slider.setSliderId(rs.getInt("slider_id"));
				Slider.add(slider);
           }
           rs.close();
           ps.close();
          
           return Slider;
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
	}

	@Override
	public void addAdvertisement(Advertisement s) {
		logger.info("Inside Add Slider Impl");
		
		String sql = "insert into advertisement (slider_title, image, redirect_url, target, active, status, created_by, ip_address) values (?,?,?,?,?,?,?,?)";
		
		Connection conn = null;
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, s.getSliderTitle());
			ps.setString(2, s.getImage());
			ps.setString(3, s.getRedirectUrl());
			ps.setString(4, s.getTarget());
			ps.setString(5, s.getActive());
			ps.setString(6, s.getStatus());
			ps.setInt(7, s.getCreatedBy());
			ps.setString(8, s.getIpAddress());
			
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
	}

	@Override
	public void editAdvertisement(Advertisement s) {
	logger.info("Inside editAdvertisement Impl");
		
		String sql = "update advertisement set slider_title=?, image=?, redirect_url=?, target=?, active=?, status=?, created_by=?, ip_address=? where slider_id=?";
		
		Connection conn = null;
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, s.getSliderTitle());
			ps.setString(2, s.getImage());
			ps.setString(3, s.getRedirectUrl());
			ps.setString(4, s.getTarget());
			ps.setString(5, s.getActive());
			ps.setString(6, s.getStatus());
			ps.setInt(7, s.getCreatedBy());
			ps.setString(8, s.getIpAddress());
			ps.setInt(9, s.getSliderId());
			
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
	}
	
	@Override
	public void deleteAdvertisement(int sliderid) {
		logger.info("Inside Delete advertisement Impl");
		String status="n";
		String sql = "update advertisement set status=? where slider_id=?";
		Connection conn = null;
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, status);
			ps.setInt(2, sliderid);
			
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
	}

	@Override
	public void setActiveOrInActiveSlider(Advertisement s) {
logger.info("Inside Set Active Or InActive Slider Impl");
		
		String sql = "update advertisement set active=?, created_by=?, ip_address=? where slider_id=?";
		
		Connection conn = null;
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, s.getActive());
			ps.setInt(2, s.getCreatedBy());
			ps.setString(3, s.getIpAddress());
			ps.setInt(4, s.getSliderId());
			
			ps.executeUpdate();
		}
		catch (SQLException ex)
		{
			throw new RuntimeException(ex);
        }
		finally
		{
            if (conn != null)
            {
            	try
            	{
            		conn.close();
                }
            	catch (SQLException ex) {}
            }
        }
	}
	
	

}