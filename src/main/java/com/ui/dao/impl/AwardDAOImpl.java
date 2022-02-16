package com.ui.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ui.dao.AwardDAO;
import com.ui.model.AwardImage;
import com.ui.model.Awards;



public class AwardDAOImpl implements AwardDAO{
  private DataSource dataSource;  
  public void setDataSource(DataSource dataSource)
  {
      this.dataSource = dataSource;
  }   
  private static final Logger logger = LoggerFactory.getLogger(AwardDAOImpl.class);
  @Override
  public void addAward(Awards a) {
    // TODO Auto-generated method stub
    
  }
  @Override
  public void addAwardImage(AwardImage p) {
    // TODO Auto-generated method stub
    
  }
  @Override
  public int getLastAwardId() {
    // TODO Auto-generated method stub
    return 0;
  }
  @Override
  public List<Awards> getAllAwards() {
    // TODO Auto-generated method stub
    return null;
  }
  @Override
  public List<AwardImage> getAwardImage(int awardid) {
    // TODO Auto-generated method stub
    return null;
  }
  @Override
  public void deleteSelectedAwardImage(int awardid) {
    // TODO Auto-generated method stub
    
  }
  @Override
  public void editAward(Awards a) {
    // TODO Auto-generated method stub
    
  }
  @Override
  public void deleteAward(int awardid) {
    // TODO Auto-generated method stub
    
  }
  @Override
  public List<AwardImage> getAwardDetailByRotaryYearWithOneImage(int rotaryyearid) {
    // TODO Auto-generated method stub
    return null;
  }
  @Override
  public Awards getAwardDetailById(int awardid) {
    // TODO Auto-generated method stub
    return null;
  } 

}
