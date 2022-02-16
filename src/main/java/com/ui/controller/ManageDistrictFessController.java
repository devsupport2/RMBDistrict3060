package com.ui.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ui.dao.ManageDistrictFessDAO;
import com.ui.model.Fellowship;
import com.ui.model.ManageDistrictFess;


@RestController
public class ManageDistrictFessController {

	@Autowired
	ManageDistrictFessDAO manageDistrictFessDAO;
	
	 private static final Logger logger = LoggerFactory.getLogger(ManageDistrictFessController.class);
	

	 
		@PostMapping("addmanageDistrictFess")
	    public String addMasterPlan(@RequestBody ManageDistrictFess manageDistrictFess, HttpServletRequest request, HttpSession session)
	 
	    {
			 logger.info("***** Add ManageAdmin *****");
	        String result = "";
	        int  id = Integer.parseInt(session.getAttribute("adminid").toString()); 
	       
	       String s="y";
	    
	       
	        String ip = request.getHeader("X-FORWARDED-FOR");
	        if (ip == null) {
	            ip = request.getRemoteAddr();
	        }
	
	      manageDistrictFess.setCreatedBy(id);
	      manageDistrictFess.setIpAddress(ip);
	      manageDistrictFess.setStatus(s);
	      System.out.println("llllllllllllllllllllllll"+manageDistrictFess.getRotary_year());
	        result = manageDistrictFessDAO.addManageDistrictFess(manageDistrictFess);
	        		
	  
	        return result;
	    }
		
		@GetMapping(value = "getAllManageDistrictFess")
		  public List<ManageDistrictFess> getAllManageAdminName(HttpServletRequest request) {
		      logger.info("*****getAllManageDistrictFess*****");
		      return manageDistrictFessDAO.getAllManageDistrictFess();
		    
		}
		@DeleteMapping(value = "deletedistrict_fees_id")
		  public void delete(int rmb_district_fees_id) {
		      logger.info("*****  deletedistrict_fees_id *****");
		      manageDistrictFessDAO.deleteManageDistrictFess(rmb_district_fees_id);		
		      }
		
		 @GetMapping(value = "/getFellowshipByFees")
		  public ManageDistrictFess getBatchTimingsById(int fellowship_id, HttpServletRequest request) {
		      logger.info("*****getFellowshipByFees *****");
		      return manageDistrictFessDAO.getManageAdminById(fellowship_id);
		  }
}
