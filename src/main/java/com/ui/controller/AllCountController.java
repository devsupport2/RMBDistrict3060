package com.ui.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ui.dao.AllCountDAO;
import com.ui.dao.FellowshipDAO;
import com.ui.model.AllCount;
import com.ui.model.AttendanceList;
import com.ui.model.Fellowship;
import com.ui.model.Members;

@RestController
public class AllCountController {
	
	@Autowired
	AllCountDAO allCountDAO;
	
	@Autowired
	FellowshipDAO fellowshipDAO;
	 private static final Logger logger = LoggerFactory.getLogger(AllCountController.class);
		
		
	 @GetMapping(value = "/getCountMettingById")
	  public AllCount getCategoryById(int memberId, HttpServletRequest request) {
	      logger.info("***** GET getCountMettingById *****");
	      return allCountDAO.getMeetingById(memberId);
	  }
	 
		
	 @GetMapping(value = "/getCountRefferal")
	  public AllCount getCountRefferal(int memberId, HttpServletRequest request) {
	      logger.info("***** GET getCountRefferal *****");
	      return allCountDAO.getCountRefferance(memberId);
	  }
	 
	 @GetMapping(value = "/getCountRefferalRecied")
	  public AllCount getCountRefferalRecied(int memberId, HttpServletRequest request) {
	      logger.info("***** GET getCountRefferalRecied *****");
	      return allCountDAO.getCountRefferanceRecieved(memberId);
	  }
	 @GetMapping(value = "/getCountBusiness")
	  public AllCount getCountBusiness(int memberId, HttpServletRequest request) {
	      logger.info("***** getCountBusiness*****");
	      return allCountDAO.getCountBusiness(memberId);
	  }

	 @GetMapping(value = "/getAllCountList")
	  public AllCount getAllCountList(HttpServletRequest request) {
	      logger.info("***** getAllCountList*****");
	      return allCountDAO.getCountAllList();
	    		  
	  }
	 
	 @GetMapping(value = "/getTopMemberMeeting")
	  public AllCount getTopMemberMeeting(String fromdate , String todate ,HttpServletRequest request) {
	      logger.info("***** getTopMemberMeeting*****");
	      return allCountDAO.getTopMemberMeeting(fromdate, todate);
	    		  
	  }
	 
	 @GetMapping(value = "/getTopMemberReferal")
	  public AllCount getTopMemberReferal(String fromdate , String todate ,HttpServletRequest request) {
	      logger.info("***** getTopMemberReferal*****");
	      return allCountDAO.getTopMemberReferal(fromdate, todate);
	    		  
	  }
	
	 
	 @GetMapping(value = "/getTopMemberBusiness")
	  public AllCount getTopMemberBusiness(String fromdate , String todate ,HttpServletRequest request) {
	      logger.info("***** getTopMemberBusiness*****");
	      return allCountDAO.getTopMemberBusiness(fromdate, todate);
	    		  
	  }

	 @GetMapping(value = "/getFirstdashboard")
	  public AllCount getFirstdashboard(int memberId, String fromdate , String todate ,HttpServletRequest request) {
	      logger.info("***** getFirstdashboard*****");
	      System.out.println("memberId"+memberId+"fromdate"+fromdate+"todate"+todate);
	      return allCountDAO.getFirstGiven(memberId, fromdate, todate);
	    		  
	  }
	 @GetMapping(value = "/getSecondGiven")
	  public AllCount getSecondGiven(int memberId, String fromdate , String todate ,HttpServletRequest request) {
	      logger.info("***** getSecondGiven*****");
	      return allCountDAO.getSecondGiven(memberId, fromdate, todate);
	    		  
	  }
	 @GetMapping(value = "/getThirdSummary")
	  public AllCount getThirdSummary(String fromdate , String todate ,HttpServletRequest request) {
	      logger.info("***** getThirdSummary*****");
	      return allCountDAO.getThirdSummary( fromdate, todate);
	    		  
	  }
	 //  Total Chapter Summary By Fellowship
	 @GetMapping(value = "/getChapterSummaryByFellowship")
	  public List<Fellowship> getChapterSummaryByFellowship(HttpServletRequest request) {
	      logger.info("***** getChapterSummaryByFellowship*****");
	      List<Fellowship> fe = new ArrayList<Fellowship>();
	      fe = fellowshipDAO.getAllFellowship();
	      AllCount b = null;
	      for (Fellowship f : fe) {
	    	 b = allCountDAO.getChapterSummaryByFellowship(f.getFellowship_id());
	    	 f.setAllCo(b);
	      }
	    
	      
	      return fe;
	    		  
	  }
	 
	 @PostMapping("addAttendanceList")
	  public String addAttendanceList(@RequestBody AttendanceList[] attendanceList, HttpServletRequest request, HttpSession session)

	  {
	       logger.info("***addAttendanceList *****");
	      String result = "";
	      int  id = Integer.parseInt(session.getAttribute("adminid").toString()); 
	 
	    
	      System.out.println("============================================================="+id);
	      String ip = request.getHeader("X-FORWARDED-FOR");
	      if (ip == null) {
	          ip = request.getRemoteAddr();
	      }
	 
	      
	      String s = "y";
	 
	      for(AttendanceList at : attendanceList)
	      {
	          at.setCreated_by(id);
	          at.setIp_address(ip);
	          at.setStatus(s);
	       

	          result = allCountDAO.addAttendanceList(at);
	      }
	     
	              

	      return result;
	  }
	 
}
