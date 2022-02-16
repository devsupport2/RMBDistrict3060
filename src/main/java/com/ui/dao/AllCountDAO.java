package com.ui.dao;

import javax.servlet.http.HttpSession;

import com.ui.model.AllCount;
import com.ui.model.Attendance;
import com.ui.model.AttendanceList;

public interface AllCountDAO {

	public AllCount getAllCountMeeting(HttpSession session);
	
	public AllCount getMeetingById(int memberId);
	
	public AllCount getCountRefferance(int memberId);
	
	public AllCount getCountRefferanceRecieved(int memberId);
	
	public AllCount getCountBusiness(int memberId);
	
	public AllCount getCountAllList();

	public AllCount getTopMemberMeeting(String fromdate , String todate);
	
	public AllCount getTopMemberReferal(String fromdate , String todate);
	
	public AllCount getTopMemberBusiness(String fromdate , String todate);
	
	//given First Dashboard
	public AllCount getFirstGiven(int memberId,String fromdate , String todate);
	
	//given Second Dashboard
    public AllCount getSecondGiven(int memberId,String fromdate , String todate);
    
  //given Third Dashboard
    public AllCount getThirdSummary(String fromdate , String todate);
    
    public AllCount getChapterSummaryByFellowship(int fellowship_id);
    
    // Events Attendance List & Count
    public String addAttendance(Attendance m);
    
    public String addAttendanceList(AttendanceList a);
    
    
		
    
}
