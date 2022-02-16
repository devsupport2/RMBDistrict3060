package com.ui.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ui.dao.AllCountDAO;
import com.ui.model.AllCount;
import com.ui.model.Attendance;
import com.ui.model.AttendanceList;
import com.ui.model.Chapter;


public class AllCountDAOImpl implements AllCountDAO {

	@Autowired
    private DataSource dataSource;
    public void setDataSource(DataSource dataSource)
    {
        this.dataSource = dataSource;
    }
    JdbcTemplate jdbcTemplate;

    private static final Logger logger = LoggerFactory.getLogger(AllCountDAOImpl.class);
    
	@Override
	public AllCount getAllCountMeeting(HttpSession session) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AllCount getMeetingById(int memberId) {
		AllCount m = null;
		String s ="y";
		String sql = "select count(met_member_id) as given_meetingcount from member_one_to_one where invited_by_member_id=? and status=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, s);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
			
			m.setMemberId(memberId);
            m.setGiven_meetingcount(rs.getInt("given_meetingcount"));
          
		
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
	public AllCount getCountRefferance(int memberId) {
		AllCount m = null;
		String s ="y";
		String sql = "select count(member_referral_id) as refferencecount from member_referral where created_by=? and status=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, s);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
			
			m.setMemberId(memberId);
            m.setRefferencecount(rs.getInt("refferencecount"));
          
		
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
	public AllCount getCountRefferanceRecieved(int memberId) {
		AllCount m = null;
		String s ="y";
		String sql = "select count(member_referral_id) as refferal_recevied from member_referral where to_member_id=? and status=?";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, s);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
			
			m.setMemberId(memberId);
            m.setRefferal_recevied(rs.getInt("refferal_recevied"));
          
		
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
	public AllCount getCountBusiness(int memberId) {
		  logger.info("***** getCountBusiness Dao Impl*****");
		System.out.println(">>>>>>>>>>>>>"+memberId);
		AllCount m = null;
		String s ="y";
		String sql = "select (select sum(amount) from member_thank_you_slip where created_by =? and status='y') as Businessgiven ,(select sum(amount) from member_thank_you_slip where to_member_id=? and status='y') as Businessreceived";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setInt(2, memberId);
		
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
			m.setMemberId(memberId);
            m.setBusinessgiven(rs.getInt("businessgiven"));
            m.setBusinessreceived(rs.getInt("businessreceived"));
         
          
		
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
	public AllCount getCountAllList() {
		  logger.info("***** getCountAllList*****");
	
		AllCount m = null;
		String s ="y";
		String sql = "select (select count(member_referral_id) as refferal_recevied from member_referral where  status='y') as refferalcount,(select count(met_member_id) as given_meetingcount from member_one_to_one where  status='y') as meetingcount,(select sum(amount) from member_thank_you_slip where status='y') as Businesscount ,(select count(member_id) as member from members where  status='y') as memberscount,(select count(fellowship_id) as fellowshiplist from fellowship where  status='y') as fellowshipcount ";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
		
		
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
	
         
            m.setBusinesscount(rs.getInt("Businesscount"));
            m.setFellowshipcount(rs.getInt("fellowshipcount"));
            m.setMeetingcount(rs.getInt("meetingcount"));
            m.setRefferalcount(rs.getInt("refferalcount"));
            m.setMembercount(rs.getInt("memberscount"));
         
          
		
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
	public AllCount getTopMemberMeeting(String fromdate, String todate) {
		AllCount m = null;
		String s ="y";
		//String sql = "select mo.invited_by_member_id, mm.member_first_name,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,count(mo.invited_by_member_id) as given_meetingcount from member_one_to_one mo left join members mm on mm.member_id = mo.created_by where mo.status='y' and mo.meeting_date between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y') GROUP BY mo.invited_by_member_id,mm.member_first_name ,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,mo.meeting_date order by given_meetingcount Asc ";
		 String sql = "select mo.invited_by_member_id, mm.member_first_name,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,count(mo.invited_by_member_id) as given_meetingcount from member_one_to_one mo left join members mm on mm.member_id = mo.created_by where mo.status='y' and mo.meeting_date between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y') GROUP BY mo.invited_by_member_id,mm.member_first_name ,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,mo.meeting_date order by given_meetingcount desc";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, fromdate);
			ps.setString(2, todate);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
		
            m.setTop_meetingcount(rs.getInt("given_meetingcount"));
            m.setFirst_name(rs.getString("member_first_name"));
            m.setMiddle_name(rs.getString("member_middle_name"));
            m.setLast_name(rs.getString("member_last_name"));
            m.setProfile_image(rs.getString("member_profile_picture"));
            
		
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
	public AllCount getTopMemberReferal(String fromdate, String todate) {
		AllCount m = null;
		String s ="y";
		//String sql = "select mr.created_by,count(mr.member_referral_id) as refferal_recevied ,mm.member_first_name,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture from member_referral mr left join members mm on mm.member_id = mr.created_by where mr.status='y' and mr.refer_date between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y') GROUP BY mr.created_by,mm.member_first_name ,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,mr.refer_date order by refferal_recevied Asc ";
		String sql = "select mr.created_by,count(mr.member_referral_id) as refferal_recevied ,mm.member_first_name,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture from member_referral mr left join members mm on mm.member_id = mr.created_by where mr.status='y' and mr.refer_date between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y') GROUP BY mr.created_by,mm.member_first_name ,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,mr.refer_date order by refferal_recevied desc limit 0,1 ";
		
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, fromdate);
			ps.setString(2, todate);
			System.out.println("+++++++++++++++++++++++++Top member refferal+++++++++++++"+ps);
			
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
		
            m.setTop_referalcount(rs.getInt("refferal_recevied"));
            m.setFirst_name(rs.getString("member_first_name"));
            m.setMiddle_name(rs.getString("member_middle_name"));
            m.setLast_name(rs.getString("member_last_name"));
            m.setProfile_image(rs.getString("member_profile_picture"));
            
		
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
	public AllCount getTopMemberBusiness(String fromdate, String todate) {
		AllCount m = null;
		String s ="y";
	//	String sql = " SELECT mt.created_by, MAX(mt.amount) as Amount, mm.member_first_name,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture FROM member_thank_you_slip mt left join members mm on mm.member_id = mt.created_by where mt.status='y' and mt.slip_date between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y') GROUP BY mt.created_by,mm.member_first_name ,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,mt.slip_date order by mt.amount desc";
	String sql ="SELECT mt.created_by, MAX(mt.amount) as Amount, mm.member_first_name,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture FROM member_thank_you_slip mt left join members mm on mm.member_id = mt.to_member_id where mt.status=? and mt.slip_date between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y') GROUP BY mt.created_by,mm.member_first_name ,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,mt.slip_date,mt.amount order by mt.amount desc limit 0,1";
		 /*String sql="SELECT mt.created_by, sum(mt.amount) as amount ,Count(mt.thank_you_slip_id) as thank_you_slip, mm.member_first_name,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture FROM member_thank_you_slip mt left join members mm on mm.member_id = mt.created_by where mt.status='y' and mt.slip_date between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y') GROUP BY mt.created_by,mm.member_first_name ,mm.member_middle_name,mm.member_last_name,mm.member_profile_picture,mt.slip_date order by thank_you_slip desc limit 0,1";*/
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, s);
			ps.setString(2, fromdate);
			ps.setString(3, todate);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
		
            m.setTop_referalcount(rs.getInt("Amount"));
            m.setFirst_name(rs.getString("member_first_name"));
            m.setMiddle_name(rs.getString("member_middle_name"));
            m.setLast_name(rs.getString("member_last_name"));
            m.setProfile_image(rs.getString("member_profile_picture"));
            
		
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
	public AllCount getFirstGiven(int memberId,String fromdate, String todate) {
		AllCount m = null;
		String s ="y";
		String sql = "select (select count(mo.met_member_id) as given_meetingcount from member_one_to_one mo where mo.invited_by_member_id=? and mo.status='y' and str_to_date(mo.meeting_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y')) as given_meetingcount ,(select count(rr.member_referral_id) as refferencecount  from member_referral rr where rr.created_by=? and rr.status='y' and str_to_date(rr.refer_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y')) as refferencecount,(select sum(mt.amount) from member_thank_you_slip mt where mt.created_by =? and mt.status='y' and str_to_date(mt.slip_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y') ) as Businessgiven  ";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, fromdate);
			ps.setString(3, todate);
			ps.setInt(4, memberId);
			ps.setString(5, fromdate);
			ps.setString(6, todate);
			ps.setInt(7, memberId);
			ps.setString(8, fromdate);
			ps.setString(9, todate);
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
		
			m.setMemberId(memberId);
            m.setGiven_meetingcount(rs.getInt("given_meetingcount"));
            m.setRefferencecount(rs.getInt("refferencecount"));
            m.setBusinessgiven(rs.getInt("businessgiven"));
            
		
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
	public AllCount getSecondGiven(int memberId,String fromdate, String todate) {
		AllCount m = null;
		String s ="y";
		String sql = "select (select count(mo.met_member_id) as given_meetingcount from member_one_to_one mo where mo.met_member_id=? and mo.status='y' and str_to_date(mo.meeting_date, '%Y-%m-%d ') between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y')) as given_meetingcount,(select count(rr.member_referral_id) as refferencecount  from member_referral rr where rr.to_member_id=? and rr.status='y' and str_to_date(rr.refer_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y')) as refferencecount,(select sum(mt.amount) from member_thank_you_slip mt where mt.to_member_id =? and mt.status='y' and str_to_date(mt.slip_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y') ) as Businessgiven  ";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, fromdate);
			ps.setString(3, todate);
			
			ps.setInt(4, memberId);
			ps.setString(5, fromdate);
			ps.setString(6, todate);
			ps.setInt(7, memberId);
			ps.setString(8, fromdate);
			ps.setString(9, todate);
		
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
		
			m.setMemberId(memberId);
           m.setGiven_meetingcount(rs.getInt("given_meetingcount"));
            m.setRefferencecount(rs.getInt("refferencecount"));
            m.setBusinessgiven(rs.getInt("Businessgiven"));
            
		
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
	public AllCount getThirdSummary(String fromdate , String todate) {
		  logger.info("***** getCountAllList*****");
	
		AllCount m = null;
		String s ="y";
		String sql = "select(select count(rr.member_referral_id) as refferal_recevied from member_referral rr where  rr.status='y' and str_to_date(rr.refer_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y') )as refferalcount,(select count(mo.met_member_id) as given_meetingcount from member_one_to_one mo where  mo.status='y' and str_to_date(mo.meeting_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y') ) as meetingcount,(select sum(mt.amount) from member_thank_you_slip mt where status='y' and  str_to_date(mt.slip_date, '%Y-%m-%d ')between str_to_date(?, '%d/%m/%Y') and  str_to_date(?, '%d/%m/%Y') ) as Businesscount ";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, fromdate);
			ps.setString(2, todate);
			ps.setString(3, fromdate);
			ps.setString(4, todate);
			ps.setString(5, fromdate);
			ps.setString(6, todate);
		
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
	
         
            m.setBusinesscount(rs.getInt("Businesscount"));     
            m.setMeetingcount(rs.getInt("meetingcount"));
            m.setRefferalcount(rs.getInt("refferalcount"));
          
         
          
		
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
	public AllCount getChapterSummaryByFellowship(int fellowship_id) {
		AllCount m = null;
		String s ="y";
		String sql = "select(select count(rr.member_referral_id) as refferal_recevied from member_referral rr left join members m on rr.created_by = m.member_id where  rr.status='y' and m.fellowship_id=? )as refferalcount,(select count(mo.met_member_id) as given_meetingcount from member_one_to_one mo left join members m on mo.invited_by_member_id = m.member_id where  mo.status='y' and m.fellowship_id=?)  as meetingcount,(select sum(mt.amount) from member_thank_you_slip mt left join members m on mt.created_by = m.member_id where mt.status='y'  and m.fellowship_id=?)as Businesscount";
		
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, fellowship_id);
			ps.setInt(2, fellowship_id);
			ps.setInt(3, fellowship_id);
			
		
			ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			m = new AllCount();
			
		
		
         m.setGiven_meetingcount(rs.getInt("meetingcount"));
            m.setRefferencecount(rs.getInt("refferalcount"));
            m.setBusinessgiven(rs.getInt("Businesscount"));
            
		
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
	public String addAttendance(Attendance m) {
			logger.info("***** Add Attendance DAO Impl*****");
     String sql = "insert into chapter (fellowship_id,chapter_username,chapter_password,chapter_email,status, created_by, ip_address) values (?,?,?,?,?,?,?)";

     Connection conn = null;
     
     try
     {
 
     	conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql);
        
       
            ps.setInt(1, m.getFellowship_id()); 
            ps.setInt(2, m.getMember_id()); 
            ps.setInt(3, m.getPresent()); 
            ps.setInt(4, m.getAbsent());
            ps.setInt(5, m.getLeave());
            ps.setInt(6, m.getSubtitute());
            ps.setString(7, m.getDelay_time());
            
            
            
            
	
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
	  public String addAttendanceList(AttendanceList a) {
	    logger.info("***** Add Attendance DAO Impl*****");
	    
	    String sql = "INSERT INTO rmbdistrict.attendance_List (fellowship_id,member_id,event_id,arrival_time,attendant_status,created_by,status,ip_address)VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

	    Connection conn = null;
	    
	    try
	    {

	       conn = dataSource.getConnection();
	        PreparedStatement ps = conn.prepareStatement(sql);
	       
	      
	           ps.setInt(1, a.getFellowship_id()); 
	           ps.setInt(2, a.getMember_id()); 
	           ps.setInt(3, a.getEvent_id()); 
	           ps.setString(4, a.getArrival_time()); 
	           ps.setString(5, a.getAttendant_status()); 
	           ps.setInt(6, a.getCreated_by()); 
	           ps.setString(7, a.getStatus()); 
	           ps.setString(8, a.getIp_address()); 
	          
	           
	           
	           
	   
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



}


