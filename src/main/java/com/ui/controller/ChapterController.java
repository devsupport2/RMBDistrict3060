package com.ui.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ui.dao.ChapterDAO;
import com.ui.model.Chapter;
import com.ui.model.Fellowship;

@RestController
public class ChapterController {
	
	@Autowired
	ChapterDAO chapterDAO;
	 private static final Logger logger = LoggerFactory.getLogger(ChapterController.class);
	
	 
	 @PostMapping("addChapter")
	    public String addChapter(@RequestBody Chapter chapter, HttpServletRequest request, HttpSession session)
	 
	    {
			 logger.info("***** Add addChapter *****");
	        String result = "";
	        int  id = Integer.parseInt(session.getAttribute("adminid").toString());    
	        System.out.println("============================================================="+id);
	        String ip = request.getHeader("X-FORWARDED-FOR");
	        if (ip == null) {
	            ip = request.getRemoteAddr();
	        }

	        String s = "y";
	        System.out.println("-------------"+chapter.getFellowship_name());
	        
			
	        chapter.setCreatedBy(id); 
			  chapter.setIpAddress(ip);
			 
	        chapter.setStatus(s);

	        result = chapterDAO.addChapter(chapter);
	        		
	  
	        return result;
	    }
		
		@GetMapping(value = "getAllChapterName")
		  public List<Chapter> getAllChapterName(HttpServletRequest request) {
		      logger.info("*****getAllChapterName*****");
		      return chapterDAO.getAllChapter();
		    		  
		  }
		 @GetMapping(value = "/getChapterById")
		  public Chapter getChapterById(int chapter_id, HttpServletRequest request) {
		      logger.info("***** GET getfellowshipById *****");
		      return chapterDAO.getChapterById(chapter_id);
		  }
		 
		 @PostMapping(value = "editChapterName")
		  public String editBatch(@RequestBody Chapter chapter, HttpSession session, HttpServletRequest request,
		          HttpServletResponse response) {
		      logger.info("***** EDIT Chapter *****");
		      String result = "";

		      int id = Integer.parseInt(session.getAttribute("adminid").toString());
		      String ipaddress = request.getHeader("X-FORWARDED-FOR");
		      
		      if (ipaddress == null) {
		          ipaddress = request.getRemoteAddr();
		      }
		      String s = "y";
				
		      chapter.setCreatedBy(id); 
		      chapter.setIpAddress(ipaddress);
				 
		      chapter.setStatus(s);
		      
		        result = chapterDAO.editChapter(chapter);
		      return result;
		  }
}
