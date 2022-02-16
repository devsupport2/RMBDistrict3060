package com.ui.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.site.SitePreference;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ui.dao.AlbumDAO;
import com.ui.dao.LoginDAO;
import com.ui.dao.MemberDAO;
import com.ui.dao.ServiceProjectDAO;
import com.ui.dao.SliderDAO;
import com.ui.model.BoardOfDirectors;
import com.ui.model.Members;

import com.ui.dao.AdvertisementDAO;

@Controller
@EnableAsync
public class MainController {

	
	  @Autowired 
	  LoginDAO logindao;
	  
	  @Autowired
	  AlbumDAO albumdao;
	  
	  @Autowired
	  ServiceProjectDAO serviceprojectdao;
	  
	  @Autowired 
	  MemberDAO memberDAO;
	 

	@Autowired
	SliderDAO sliderDAO;
	
	@Autowired
	AdvertisementDAO advertisementDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String front_home(Locale locale, Model model, SitePreference sitePreference, HttpSession session,  HttpServletRequest request) {
		logger.info("Welcome Index");
		session.setAttribute("sitepreference", sitePreference);
		/*Get Cookie Start*/
        try
        {
            String email = null, password = null;
            
            Cookie[] cookies = request.getCookies();
            
            for(int i = 0; i < cookies.length; i++)
            {
                if(cookies[i].getName().equals("rmbvemail"))
                    email = cookies[i].getValue();
                if(cookies[i].getName().equals("rmbvpassword"))
                    password = cookies[i].getValue();
            }

            Members members = logindao.frontLogin(email, password);
          
          System.out.println("'''''''''''''''''''''''''''''"+sitePreference);
            if (members != null) {
            
                session.setMaxInactiveInterval(30 * 60); // Set Session Time Out
                session.setAttribute("loginid", members.getMemberId());
                session.setAttribute("memberid", String.valueOf(members.getMemberId()));
                session.setAttribute("membershipnumber", members.getMembershipNumber());
                session.setAttribute("membername", members.getMemberFirstName());
                session.setAttribute("memberlastname", members.getMemberLastName());
                session.setAttribute("memberprofilepicture", members.getMemberProfilePicture());
                session.setAttribute("membermobilenumber", members.getMemberMobileNumber());
                session.setAttribute("memberemail", members.getMemberEmail());
                session.setAttribute("fellowshipId",members.getFellowship_id());
                session.setAttribute("roleId",members.getUser_role_id());
                return "index2";
            }
			/*
			 * session.setAttribute("fellowshipId",members.getFellowship_id());
			 * 
			 * 
			 * model.addAttribute("sliders", sliderDAO.getActiveSliders());
			 * 
			 * return "index2";
			 */
        }
        catch(Exception e)
        {
        }
        /*Get Cookie End*/
        model.addAttribute("sliders", sliderDAO.getActiveSliders());
        
        model.addAttribute("advertisement", advertisementDAO.getActiveAdvertisement());
        model.addAttribute("album", albumdao.getAllAlbum());
		  model.addAttribute("albumOneImage", albumdao.getAlbumOneImage());
		 model.addAttribute("albumImages", albumdao.getAllAlbumImages()); 
		/* 
		 if(sitePreference.toString()!="NORMAL") {
				String id = (String) session.getAttribute("memberid");
				if (id == null) {
					return "login";
				}
				return "index";
				
			
		 }*/
		return "index";
		
	}
	
	
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public String index2(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Login");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "index2";
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Login");

		return "login";
	}
	
	
	
	@RequestMapping(value = "/Success", method = RequestMethod.GET)
	public String SuccessMessage(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Login");

		return "Success";
	}
	
	
	@RequestMapping(value = "/fail", method = RequestMethod.GET)
	public String fails(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Login");

		return "fail";
	}
	
	
	
	

	@RequestMapping(value = "/login_member", method = RequestMethod.GET)
	public String login_member(int eid, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Login Member");

		return "login_member";
	}

	@RequestMapping(value = "dataform")
	public String datafrom(Locale locale, Model model, HttpSession session) {
		logger.info("##### DATA FORM #####");

		return "dataform";
	}
	
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
    public String gallery(Locale locale, Model model, HttpSession session) {
        logger.info("Welcome gallery");
        
        model.addAttribute("album", albumdao.getAllAlbum());
        model.addAttribute("albumOneImage", albumdao.getAlbumOneImage());
        model.addAttribute("albumImages", albumdao.getAllAlbumImages()); 
        return "gallery";
    }
    
	@RequestMapping(value = "/past_events", method = RequestMethod.GET)
    public String past_events(Locale locale, Model model, HttpSession session) {
        logger.info("Welcome past_events");

        return "past_events";
    }
    
    
	
	@RequestMapping(value = "roster")
	public String roster(Locale locale, Model model, HttpSession session) {
		logger.info("##### DATA FORM #####");

		return "roster";
	}

	@RequestMapping(value = "/ccavRequestHandler", method = { RequestMethod.GET, RequestMethod.POST })
	public String ccavRequestHandler(Model model) {
		logger.info("##### CCAV REQUEST HANDLER #####");
		return "ccavRequestHandler";
	}

	@RequestMapping(value = "/ccavResponseHandler", method = { RequestMethod.GET, RequestMethod.POST })
	public String ccavResponseHandler(Model model) {
		logger.info("##### CCAV RESPONSE HANDLER #####");
		return "ccavResponseHandler";
	}

	@RequestMapping(value = "/member_login", method = RequestMethod.GET)
	public String member_login(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Member Login");

		return "member_login";
	} 

	@RequestMapping(value = "/committees", method = RequestMethod.GET)
	public String committees(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome committees");

		return "committees";
	}
	
	 @RequestMapping(value = "/committee", method = RequestMethod.GET)
     public String committee(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
         logger.info("Welcome committee");

         return "committee";
     }
	
	@RequestMapping(value = "/about_rmb3060", method = RequestMethod.GET)
	public String about_rmb3060(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome about_rmb3060");

		return "about_rmb3060";
	}
	@RequestMapping(value = "/pay_now", method = RequestMethod.GET)
	public String pay_now(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Pay Now");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "pay_now";
	}

	@RequestMapping(value = "/order_history", method = RequestMethod.GET)
	public String order_history(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Pay Now");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "order_history";
	}

	@RequestMapping(value = "/order_confirmation")
	public String orderConfirmation(Locale locale, Model model, HttpSession session) {
		logger.info("##### ORDER CONFIRMATION #####");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "order_confirmation";
	}

	@RequestMapping(value = "/billing_address", method = RequestMethod.GET)
	public String billing_address(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Billing Address");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "billing_address";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome EVENT Registration");

		return "registration";
	}

	@RequestMapping(value = "/get_registered", method = RequestMethod.GET)
	public String get_registered(String r, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Sign Up Page");

		return "get_registered";
	}

	@RequestMapping(value = "/rmbb_neo_conclave", method = RequestMethod.GET)
	public String rmbb_neo_conclave(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome rmbv neo conclave");

		return "rmbb_neo_conclave";
	}

	@RequestMapping(value = "/join_rmbb", method = RequestMethod.GET)
	public String join_rmbb(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome JOIN RMBF");

		return "join_rmbb";
	}

	@RequestMapping(value = "/contact_us", method = RequestMethod.GET)
	public String contact_us(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome CONTACT US");

		return "contact_us";
	}

	@RequestMapping(value = "/terms_and_conditions", method = RequestMethod.GET)
	public String terms_and_conditions(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Terms And Condtions");

		return "terms_and_conditions";
	}

	@RequestMapping(value = "/privacy_policy", method = RequestMethod.GET)
	public String privacy_policy(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Privacy Policy");

		return "privacy_policy";
	}

	@RequestMapping(value = "/delivery_and_shipping", method = RequestMethod.GET)
	public String delivery_and_shipping(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Delivery And Shipping");

		return "delivery_and_shipping";
	}

	@RequestMapping(value = "/refund_and_cancellation", method = RequestMethod.GET)
	public String refund_and_cancellation(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Refund And Cancellation");

		return "refund_and_cancellation";
	}

	@RequestMapping(value = "/activities", method = RequestMethod.GET)
	public String activities(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Member Activities");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "activities";
	}

	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome News");

		return "news";
	}

	@RequestMapping(value = "/upcoming_birthdays", method = RequestMethod.GET)
	public String upcoming_birthdays(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Upcoimg Birthdays");

		return "upcoming_birthdays";
	}

	
	  @RequestMapping(value = "/business_categories", method = RequestMethod.GET)
	  public String business_categories1(Locale locale, Model model, HttpSession
	  session) { logger.info("Welcome Business Categories");
	  
	  
	  return "business_categories"; }
	 
	@RequestMapping(value = "/active_members", method = RequestMethod.GET)
	public String active_members(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Active Members");

		return "active_members";
	}

	@RequestMapping(value = "/comments", method = RequestMethod.GET)
	public String comments(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Comments");

		return "comments";
	}

	@RequestMapping(value = "/events", method = RequestMethod.GET)
	public String events(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Events");

		return "events";
	}

	@RequestMapping(value = "/change_password", method = RequestMethod.GET)
	public String change_password(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Change Password");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "change_password";
	}

	@RequestMapping(value = "/forget_password", method = RequestMethod.GET)
	public String forget_password(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Forget Password");

		return "forget_password";
	}


    @GetMapping(value =  "/reset_password")
      public String resetpassword(Locale locale, Model model, HttpSession session) {
          logger.info("----Reset Password-----");
          System.out.println(session.getAttribute("forgotPassEmail")+"forgat passwrd--"+session.getAttribute("forgotPassSalt"));
          
          if (session.getAttribute("forgotPassEmail") == null || session.getAttribute("forgotPassSalt") == null) {
              return "forget_password";
          }
          return "reset_password";
      }
  

	@RequestMapping(value = "/reset_password/{saltString}", method = RequestMethod.GET)
    public void reset_password(@PathVariable String saltString, @RequestParam String email,Locale locale, Model model, HttpSession session,HttpServletResponse resp, HttpServletRequest req) {
        logger.info("Welcome Reset Password");
        Members m=memberDAO.getsaltstring(email, saltString);
        System.out.println("+++++++++++++++++++JAYESH+++++++++++++++++++++++++++++++"+m.getMemberEmail());
        try {
             if (m != null) {
                 
                    session.setAttribute("forgotPassEmail", email);
                    session.setAttribute("forgotPassSalt", saltString);
                    System.out.println(" email ----  " + email+" saltstring------------" +saltString);
                    //resp.sendRedirect(req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort()+req.getContextPath() + "/reset_password");
                    resp.sendRedirect(resp.encodeRedirectURL("/reset_password"));
                
            }   
        
        
        } catch (Exception e) {
            
        }
        
    }
	
	  @RequestMapping(value = "news_detail", method = RequestMethod.GET) public
	  String news_detail(int id, int projectid, Locale locale, Model model,  HttpSession session) { 
		  logger.info("Welcome to News Detail", locale);
	  
	  model.addAttribute("AlbumByServiceProjectId",
	  albumdao.getPhotoAlbumByServiceProjectId(projectid));
	  model.addAttribute("albumImages", albumdao.getAllAlbumImages());
	
	  
	  return "news_detail"; 
	  
	  }
	 

	@RequestMapping(value = "search_result", method = RequestMethod.GET)
	public String search_result(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to News Detail", locale);

		return "search_result";
	}

	@RequestMapping(value = "event_detail", method = RequestMethod.GET)
	public String event_detail(int id, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Event Detail", locale);

		return "event_detail";
	}

	@RequestMapping(value = "/meeting_info_location", method = RequestMethod.GET)
	public String meeting_info_location(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome meeting info and location");

		return "meeting_info_location";
	}

	@RequestMapping(value = "/board_of_director", method = RequestMethod.GET)
	public String board_of_director(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome board_of_director");

		return "board_of_director";
	}

	@RequestMapping(value = "/search_detail", method = RequestMethod.GET)
	public String search_detail(int memberid, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Search Detail");

		return "search_detail";
	}

	@RequestMapping(value = "/wall_posts", method = RequestMethod.GET)
	public String wall_posts(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Wall Posts");

		return "wall_posts";
	}

	@RequestMapping(value = "/about_RMBB", method = RequestMethod.GET)
	public String about_RMBB(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome About RMBF");

		return "about_RMBB";
	}

	
	  @RequestMapping(value = "photo_albums", method = RequestMethod.GET) public
	  String photo_albums(Locale locale, Model model, HttpSession session) {
	  logger.info("Welcome to Photo Albums", locale);

	  model.addAttribute("album", albumdao.getAllAlbum());
	  model.addAttribute("albumOneImage", albumdao.getAlbumOneImage());
	  model.addAttribute("albumImages", albumdao.getAllAlbumImages());
	  
	  return "photo_albums"; }
	 
	@RequestMapping(value = "album_images", method = RequestMethod.GET)
	public String photo_albums(int albumid, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Album Images", locale);

		return "album_images";
	}

	@RequestMapping(value = "/club_bulletins", method = RequestMethod.GET)
	public String club_bulletins(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Club Bulletins");

		return "club_bulletins";
	}

	@RequestMapping(value = "/members_directory", method = RequestMethod.GET)
	public String members_directory(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome members directory");

		return "members_directory";
	}

	@RequestMapping(value = "/member_profile", method = RequestMethod.GET)
	public String member_profile(int id, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Member Profile");

		return "member_profile";
	}

	@RequestMapping(value = "/my_profile", method = RequestMethod.GET)
	public String my_profile(Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome My Profile");
		session.setAttribute("sitepreference", sitePreference);
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_profile";
	}

	@RequestMapping(value = "/registered_members_directory", method = RequestMethod.GET)
	public String registered_members_directory(Locale locale, Model model, HttpSession session) {
		logger.info("registered_members_directory called");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "registered_members_directory";
	}
	
	@RequestMapping(value = "/member_meeting_rec", method = RequestMethod.GET)
	public String member_meeting_rec(Locale locale, Model model, HttpSession session) {
		logger.info("member_meeting_rec called");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "member_meeting_rec";
	}
	
	@RequestMapping(value = "/member_bussiness_given", method = RequestMethod.GET)
	public String member_bussiness_given(Locale locale, Model model, HttpSession session) {
		logger.info("member_bussiness_given called");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "member_bussiness_given";
	}

	@RequestMapping(value = "/referrals", method = RequestMethod.GET)
	public String referrals(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Referrals");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "referrals";
	}

	@RequestMapping(value = "/thankyou_slip", method = RequestMethod.GET)
	public String thankyou_slip(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Thank You Slip");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "thankyou_slip";
	}

	@RequestMapping(value = "/thankyou_slip1", method = RequestMethod.GET)
	public String thankyou_slip1(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Thank You Slip");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "thankyou_slip1";
	}
	@RequestMapping(value = "/one_to_one", method = RequestMethod.GET)
	public String one_to_one(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome One to One");
		//

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "one_to_one";
	}

	@RequestMapping(value = "/my_references", method = RequestMethod.GET)
	public String my_references(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome One to One");
		//

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_references";
	}

	@RequestMapping(value = "/my_meetings", method = RequestMethod.GET)
	public String my_meetings(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My Meetings");
		//

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_meetings";
	}

	@RequestMapping(value = "/manage_my_profile", method = RequestMethod.GET)
	public String manage_my_profile(Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Manage My Profile");
		//
		session.setAttribute("sitepreference", sitePreference);
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "manage_my_profile";
	}

	
	@RequestMapping(value = "/my_contact_detail", method = RequestMethod.GET)
	public String my_contact_detail(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My Contact Detail");
		//

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_contact_detail";
	}

	@RequestMapping(value = "/my_family_detail", method = RequestMethod.GET)
	public String my_family_detail(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My family Detail");
		//
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_family_detail";
	}

	@RequestMapping(value = "/my_reference", method = RequestMethod.GET)
	public String my_reference(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My family Detail");
		//
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_reference";
	}

	@RequestMapping(value = "/my_payment_detail", method = RequestMethod.GET)
	public String my_payment_detail(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My payment Detail");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_payment_detail";
	}

	@RequestMapping(value = "/chapter_summary", method = RequestMethod.GET)
	public String chapter_summary(Locale locale, Model model, HttpSession session) {
		logger.info("##### CHAPTER SUMMAY PAGE #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "chapter_summary";
	}

	@RequestMapping(value = "/member_reference", method = RequestMethod.GET)
	public String member_reference(Locale locale, Model model, HttpSession session) {
		logger.info("##### MEMBER REFERENCE PAGE #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "member_reference";
	}

	@RequestMapping(value = "/member_referrals", method = RequestMethod.GET)
	public String member_referrals(Locale locale, Model model, HttpSession session) {
		logger.info("##### MEMBER REFERRALS PAGE #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "member_referrals";
	}

	@RequestMapping(value = "/meber_business_received", method = RequestMethod.GET)
	public String meber_business_received(Locale locale, Model model, HttpSession session) {
		logger.info("##### Mmeber_business_received #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "meber_business_received";
	}
	
	@RequestMapping(value = "/member_business_transaction", method = RequestMethod.GET)
	public String member_business_transaction(Locale locale, Model model, HttpSession session) {
		logger.info("##### MEMBER BUSINESS TRANSACTION #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "member_business_transaction";
	}

	@RequestMapping(value = "/member_meeting", method = RequestMethod.GET)
	public String member_meeting(Locale locale, Model model, HttpSession session) {
		logger.info("##### MEMBER MEETING #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "member_meeting";
	}

	/*
	 * @RequestMapping(value = "/award", method = RequestMethod.GET) public String
	 * award(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome Award"); return "award"; }
	 * 
	 * @RequestMapping(value = "award_detail", method = RequestMethod.GET) public
	 * String award_detail(int awardid, Locale locale, Model model, HttpSession
	 * session) { logger.info("Welcome to Award Detail", locale); return
	 * "award_detail"; }
	 * 
	 * @RequestMapping(value = "/service_projects", method = RequestMethod.GET)
	 * public String service_projects(Locale locale, Model model, HttpSession
	 * session) { logger.info("Welcome Service Projects");
	 * 
	 * return "service_projects"; }
	 * 
	 * @RequestMapping(value = "/birthdays_and_anniversaries", method =
	 * RequestMethod.GET) public String birthdays_and_anniversaries(Locale locale,
	 * Model model, HttpSession session) {
	 * logger.info("Welcome Birthdays & Anniversaries");
	 * 
	 * return "birthdays_and_anniversaries"; }
	 * 
	 * @RequestMapping(value = "service_project_detail", method = RequestMethod.GET)
	 * public String service_project_detail(int id, Locale locale, Model model,
	 * HttpSession session) { logger.info("Welcome to Service Project Detail",
	 * locale);
	 * 
	 * model.addAttribute("AlbumByServiceProjectId",
	 * albumdao.getPhotoAlbumByServiceProjectId(id));
	 * model.addAttribute("ServiceProjectImages",
	 * serviceprojectdao.getRelatedServiceProjectImages(id));
	 * model.addAttribute("albumImages", albumdao.getAllAlbumImages()); return
	 * "service_project_detail"; }
	 * 
	 * @RequestMapping(value = "/history", method = RequestMethod.GET) public String
	 * history(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome history");
	 * 
	 * return "history"; }
	 * 
	 * @RequestMapping(value = "/join_leaders", method = RequestMethod.GET) public
	 * String join_leaders(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome join_leaders");
	 * 
	 * return "join_leaders"; }
	 * 
	 * @RequestMapping(value = "/exchange_ideas", method = RequestMethod.GET) public
	 * String exchange_ideas(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome exchange_ideas");
	 * 
	 * return "exchange_ideas"; }
	 * 
	 * @RequestMapping(value = "/take_action", method = RequestMethod.GET) public
	 * String take_action(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome take_action");
	 * 
	 * return "take_action"; }
	 * 
	 * @RequestMapping(value = "/give", method = RequestMethod.GET) public String
	 * give(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome give");
	 * 
	 * return "give"; }
	 * 
	 * @RequestMapping(value = "/become_a_member", method = RequestMethod.GET)
	 * public String become_a_member(Locale locale, Model model, HttpSession
	 * session) { logger.info("Welcome become_a_member");
	 * 
	 * return "become_a_member"; }
	 * 
	 * @RequestMapping(value = "/committee", method = RequestMethod.GET) public
	 * String committee(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome committee");
	 * 
	 * return "committee"; }
	 * 
	 * @RequestMapping(value = "/golf_tournament", method = RequestMethod.GET)
	 * public String golf_tournament(Locale locale, Model model, HttpSession
	 * session) { logger.info("Welcome golf tournament");
	 * 
	 * return "golf_tournament"; }
	 * 
	 * @RequestMapping(value = "/member_profile", method = RequestMethod.GET) public
	 * String member_profile(int id, Locale locale, Model model, HttpSession
	 * session) { logger.info("Welcome Member Profile");
	 * 
	 * return "member_profile"; }
	 * 
	 * @RequestMapping(value = "/my_profile", method = RequestMethod.GET) public
	 * String my_profile(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome My Profile");
	 * 
	 * return "my_profile"; }
	 * 
	 * @RequestMapping(value = "/manage_my_profile", method = RequestMethod.GET)
	 * public String manage_my_profile(Locale locale, Model model, HttpSession
	 * session) { logger.info("Welcome Manage My Profile");
	 * 
	 * return "manage_my_profile"; }
	 * 
	 * @RequestMapping(value = "/manage_my_contact_detail", method =
	 * RequestMethod.GET) public String manage_my_contact_detail(Locale locale,
	 * Model model, HttpSession session) {
	 * logger.info("Welcome Manage My Contact Detail");
	 * 
	 * return "manage_my_contact_detail"; }
	 * 
	 * @RequestMapping(value = "/manage_my_family_detail", method =
	 * RequestMethod.GET) public String manage_my_family_detail(Locale locale, Model
	 * model, HttpSession session) { logger.info("Welcome Manage My Family Detail");
	 * 
	 * return "manage_my_family_detail"; }
	 * 
	 * @RequestMapping(value = "/my_sponsor", method = RequestMethod.GET) public
	 * String my_sponsor(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome My Sponsor");
	 * 
	 * return "my_sponsor"; }
	 * 
	 * @RequestMapping(value = "members_family_info", method = RequestMethod.GET)
	 * public String members_family_info(int membersfamilyid, int memberid, Locale
	 * locale, Model model, HttpSession session) {
	 * logger.info("Welcome to Members's Family Info", locale); return
	 * "members_family_info"; }
	 * 
	 * @RequestMapping(value = "contact", method = RequestMethod.GET) public String
	 * contact(Locale locale, Model model, HttpSession session) {
	 * logger.info("Welcome to Contact Us", locale); return "contact"; }
	 */

	// ----------------------------------------------Admin-----------------------------------------

	@RequestMapping(value = "/manageRmbDistrict", method = RequestMethod.GET)
	public String home(Locale locale, Model model, SitePreference sitePreference, HttpSession session) {
		logger.info("Welcome home...");

		//sitePreference.
		// Check Session Start
		String id = (String) session.getAttribute("adminid");

		String role_id = (String) session.getAttribute("roleId");
		
	

		if (id == null) {
			return "admin/index";
		}
		
		if (role_id != "1") {
			return "admin/index";
		}
		// Check Session End

		return "admin/index";
	}

	@RequestMapping(value = "/manageRmbDistrict/admin_home", method = RequestMethod.GET)
	public String admin_home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Admin home...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		String role_id = (String) session.getAttribute("roleId");
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");

		System.out.println("mmmmmmmmmmmmmmmmmmmmmmmmm"+role_id);
		if (id == null) {
			return "admin/index";
		}
		if (role_id.equals("0")) {
			return "admin/index";
		}
		if (role_id.equals("3")) {
			return "admin/index";
		}
		// Check Session End

		return "admin/admin_home";
	}

	@RequestMapping(value = "/manageRmbDistrict/adminlogout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpSession session) {
		logger.info("Logout...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id != null) {
			session.setAttribute("adminid", null);
			session.setAttribute("adminshowname", null);

			return "admin/index";
		}
		// Check Session End

		return "admin/index";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_events", method = RequestMethod.GET)
	public String manage_events(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Manage Events...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_events";
	}

	
	@RequestMapping(value = "/manageRmbDistrict/manage_slider", method = RequestMethod.GET)
	public String manage_slider(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Manage Events...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_slider";
	}
	
	@RequestMapping(value = "/manageRmbDistrict/manage_advertisement", method = RequestMethod.GET)
	public String advertisement(Locale locale, Model model, HttpSession session) {
		logger.info("advertisement...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_advertisement";
	}
	@RequestMapping(value = "/manageRmbDistrict/add_event", method = RequestMethod.GET)
	public String add_event(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Add Event...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/add_event";
	}

	@RequestMapping(value = "/manageRmbDistrict/event_response", method = RequestMethod.GET)
	public String event_response(Locale locale, Model model, HttpSession session) {
		logger.info("+++++ WELCOME TO EVENT RESPONSE PAGE +++++");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/event_response";
	}

	
	@RequestMapping(value = "/manageRmbDistrict/attendance", method = RequestMethod.GET)
	public String attendance(Locale locale, Model model, HttpSession session) {
		logger.info("+++++ WELCOME TO Attendance PAGE +++++");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/attendance";
	}
	
	
	@RequestMapping(value = "/manageRmbDistrict/manage_orders", method = RequestMethod.GET)
	public String manage_orders(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Orders...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_orders";
	}

	// URI mapping for Manage News
	@RequestMapping(value = "/manageRmbDistrict/manage_news", method = RequestMethod.GET)
	public String manage_news(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage News...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_news";
	}

	// URI mapping for Manage Business
	@RequestMapping(value = "/manageRmbDistrict/manage_business_transaction", method = RequestMethod.GET)
	public String manage_business_transaction(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Business Transaction...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_business_transaction";
	}

	// URI mapping for Manage Meeting
	@RequestMapping(value = "/manageRmbDistrict/manage_members_meeting", method = RequestMethod.GET)
	public String manage_members_meeting(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Members Meeting...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_members_meeting";
	}

	// URI mapping for Manage Reference
	@RequestMapping(value = "/manageRmbDistrict/manage_reference", method = RequestMethod.GET)
	public String manage_reference(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Reference...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_reference";
	}

	// URI mapping for Add News
	@RequestMapping(value = "/manageRmbDistrict/add_news", method = RequestMethod.GET)
	public String add_news(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Add News...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/add_news";
	}

	// URI mapping for Edit News
	@RequestMapping(value = "/manageRmbDistrict/edit_news", method = RequestMethod.GET)
	public String edit_news(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Edit News...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/edit_news";
	}

	@RequestMapping(value = "/manageRmbDistrict/service_project", method = RequestMethod.GET)
	public String service_project(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Service Project...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/service_project";
	}

	@RequestMapping(value = "/manageRmbDistrict/add_service_project", method = RequestMethod.GET)
	public String add_service_project(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Add Service Project...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/add_service_project";
	}

	@RequestMapping(value = "/manageRmbDistrict/rotary_year", method = RequestMethod.GET)
	public String rotary_year(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Rotery Year...");

		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/rotary_year";
	}

	@RequestMapping(value = "/manageRmbDistrict/photo_album", method = RequestMethod.GET)
	public String photo_album(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Photo Album...");

		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/photo_album";
	}

	@RequestMapping(value = "/manageRmbDistrict/add_photo_album", method = RequestMethod.GET)
	public String add_photo_album(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Add Photo Album...");

		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/add_photo_album";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_club_bulletins", method = RequestMethod.GET)
	public String manage_club_bulletins(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Club Bulletins...");

		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/manage_club_bulletins";
	}

	@RequestMapping(value = "/manageRmbDistrict/add_club_bulletin", method = RequestMethod.GET)
	public String add_club_bulletin(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Add Club Bulletin...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/add_club_bulletin";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_members", method = RequestMethod.GET)
	public String manage_members(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Manage Members...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_members";
	}

	@RequestMapping(value = "/manageRmbDistrict/add_member", method = RequestMethod.GET)
	public String add_member(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Add Member...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/add_member";
	}

	@RequestMapping(value = "/manageRmbDistrict/contact_detail", method = RequestMethod.GET)
	public String contact_detail(int membercategoryid, String tenureplan, Locale locale, Model model,
			HttpSession session) {
		logger.info("Welcome Contact Detail");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End

		return "admin/contact_detail";
	}

	@RequestMapping(value = "/manageRmbDistrict/family_detail", method = RequestMethod.GET)
	public String family_detail(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Family Detail");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End

		return "admin/family_detail";
	}

	@RequestMapping(value = "/manageRmbDistrict/reference", method = RequestMethod.GET)
	public String reference(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Reference");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End

		return "admin/reference";
	}

	@RequestMapping(value = "/manageRmbDistrict/payment_detail", method = RequestMethod.GET)
	public String payment_detail(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Add Payment Detail...");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End

		return "admin/payment_detail";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_member_detail", method = RequestMethod.GET)
	public String manage_member_detail(int memberid, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Member Detail");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End

		return "admin/manage_member_detail";
	}

	
	@RequestMapping(value = "/member_details", method = RequestMethod.GET)
    public String member_details(Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
        logger.info("Welcome Login Member");

        return "member_details";
    }
	@RequestMapping(value = "/manageRmbDistrict/manage_contact_detail", method = RequestMethod.GET)
	public String manage_contact_detail(int memberid, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Manage Contact Detail");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End

		return "admin/manage_contact_detail";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_family_detail", method = RequestMethod.GET)
	public String manage_family_detail(int memberid, Locale locale, Model model, HttpSession session) {
		logger.info("Welcome Manage Family Detail");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End

		return "admin/family_detail";
	}

	@RequestMapping(value = "/manageRmbDistrict/board_of_directors", method = RequestMethod.GET)
	public String board_of_directors(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Board of directors...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/board_of_directors";
	}

	@RequestMapping(value = "/manageRmbDistrict/members_committee", method = RequestMethod.GET)
	public String members_committee(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Members Committee...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/members_committee";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_social_media_links", method = RequestMethod.GET)
	public String manage_social_media_links(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Social Media Links...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_social_media_links";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_awards", method = RequestMethod.GET)
	public String manage_awards(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Awards...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_awards";
	}

	@RequestMapping(value = "/manageRmbDistrict/add_award", method = RequestMethod.GET)
	public String add_award(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Add Award...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/add_award";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_beneficiary_type", method = RequestMethod.GET)
	public String manage_beneficiary_type(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Beneficiary...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_beneficiary_type";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_service_project_beneficiary", method = RequestMethod.GET)
	public String manage_service_project_beneficiary(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Service Project Beneficiary...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_service_project_beneficiary";
	}

	@RequestMapping(value = "/manageRmbDistrict/cropper", method = RequestMethod.GET)
	public String cropper(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to cropper...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/cropper";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_club_info", method = RequestMethod.GET)
	public String manage_club_info(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Manage Club Info...");

		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_club_info";
	}

	@RequestMapping(value = "/manageRmbDistrict/dues_and_billing", method = RequestMethod.GET)
	public String dues_and_billing(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Dues & Billing...");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/dues_and_billing";
	}

	@RequestMapping(value = "/manageRmbDistrict/draft_list", method = RequestMethod.GET)
	public String draft_list(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Draft List...");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/draft_list";
	}

	@RequestMapping(value = "/manageRmbDistrict/pending_payments", method = RequestMethod.GET)
	public String pending_payments(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Pending Payments...");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/pending_payments";
	}

	@RequestMapping(value = "/manageRmbDistrict/payment_history", method = RequestMethod.GET)
	public String payment_history(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Payment History...");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/payment_history";
	}

	@RequestMapping(value = "/manageRmbDistrict/business_categories", method = RequestMethod.GET)
	public String business_categories(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Business Categories...");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/business_categories";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_clubs", method = RequestMethod.GET)
	public String manage_clubs(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Clubs...");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/manage_clubs";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_fellowship", method = RequestMethod.GET)
	public String manage_fellowship(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome to Clubs...");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/manage_fellowship";
	}

	@RequestMapping(value = "/manageRmbDistrict/chapters_summary", method = RequestMethod.GET)
	public String chapters_summary(Locale locale, Model model, HttpSession session) {
		logger.info("##### ADMIN CHAPTERS SUMMARY PAGE #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/chapters_summary";
	}
	
	@RequestMapping(value = "/manageRmbDistrict/total_chapter_summary", method = RequestMethod.GET)
	public String total_chapter_summary(Locale locale, Model model, HttpSession session) {
		logger.info("##### ADMIN total_chapter_summary #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/total_chapter_summary";
	}
	
	@RequestMapping(value = "/manageRmbDistrict/vocation_master", method = RequestMethod.GET)
	public String vocation_master(Locale locale, Model model, HttpSession session) {
		logger.info("##### ADMIN VOCATION MASTER #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/vocation_master";
	}

	@RequestMapping(value = "/manageRmbDistrict/rmbb_mailer", method = RequestMethod.GET)
	public String rmbb_mailer(Locale locale, Model model, HttpSession session) {
		logger.info("##### RMBB MAILER #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/rmbb_mailer";
	}

	@RequestMapping(value = "/manageRmbDistrict/eventRegistrationsResult", method = RequestMethod.GET)
	public String eventRegistrationsResult(Locale locale, Model model, HttpSession session) {
		logger.info("##### EVENT REGISTRATION RESULT #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/eventRegistrationsResult";
	}

	@RequestMapping(value = "/manageRmbDistrict/admin_roleAssign", method = RequestMethod.GET)
	public String adminRoleAssign(Locale locale, Model model, HttpSession session) {
		logger.info("##### ADMIN ROLE ASSIGN #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/admin_roleAssign";
	}

	@RequestMapping(value = "/manageRmbDistrict/manage_admin", method = RequestMethod.GET)
	public String manageadmin(Locale locale, Model model, HttpSession session) {
		logger.info("##### ADMIN ROLE ASSIGN #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/manage_admin";
	}
	
	@RequestMapping(value = "/manageRmbDistrict/fellowship_fees", method = RequestMethod.GET)
	public String fellowship_fees(Locale locale, Model model, HttpSession session) {
		logger.info("##### fellowship_fees#####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/fellowship_fees";
	}
	
	@RequestMapping(value = "Frontlogout", method = RequestMethod.GET)
	public String Frontlogout(HttpSession session, HttpServletResponse response) {
		session.setAttribute("memberid", null);
		session.setAttribute("membername", null);
		
		
        Cookie ck1=new Cookie("rmbvemail","");
        Cookie ck2=new Cookie("rmbvpassword","");
        ck1.setMaxAge(0);
        ck2.setMaxAge(0);
        response.addCookie(ck1);
        response.addCookie(ck2);
     
		
		return "index";
	}
	
	@RequestMapping(value = "/manageRmbDistrict/readExcel", method = RequestMethod.GET)
	public String manageadmin1(Locale locale, Model model, HttpSession session) {
		logger.info("##### readExcel #####");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		return "admin/readExcel";
	}
	
	
	@RequestMapping(value = "/manage_my_profile1", method = RequestMethod.GET)
	public String manage_my_profile1(Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Manage My Profile");
		//
		session.setAttribute("sitepreference", sitePreference);
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "manage_my_profile1";
	}

	@RequestMapping(value = "/my_contact_detail1", method = RequestMethod.GET)
	public String my_contact_detail1(Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Manage My Profile");
		//
		session.setAttribute("sitepreference", sitePreference);
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_contact_detail1";
	}
	@RequestMapping(value = "/my_family_detail1", method = RequestMethod.GET)
	public String my_family_detail1(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My family Detail");
		//
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_family_detail1";
	}
	@RequestMapping(value = "/my_reference1", method = RequestMethod.GET)
	public String my_reference1(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My family Detail");
		//
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_reference1";
	}

	
	@RequestMapping(value = "/my_payment_detail1", method = RequestMethod.GET)
	public String my_payment_detail1(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome My family Detail");
		//
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "my_payment_detail1";
	}
	
	
	
	@RequestMapping(value = "/member_meeting_list", method = RequestMethod.GET)
    public String member_meeting_list(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
        logger.info("Welcome member_meeting_list");
        String id = (String) session.getAttribute("memberid");
     if (id == null) {
         return "login";
     }
        return "member_meeting_list";
    }

	@RequestMapping(value = "/manageRmbDistrict/manage_chapter", method = RequestMethod.GET)
	public String manage_chapter(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome manage_chapter...");
		// Check Session Start
		int fellowship_id = (Integer) session.getAttribute("fellowshipId");
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_chapter";
	}
	
	@RequestMapping(value = "/chapter_summary_business", method = RequestMethod.GET)
	public String chapter_summary_business(Locale locale, Model model, HttpSession session) {
		logger.info("##### chapter_summary_business #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "chapter_summary_business";
	}
	@RequestMapping(value = "/chapter_summary_meeting", method = RequestMethod.GET)
	public String chapter_summary_meeting(Locale locale, Model model, HttpSession session) {
		logger.info("##### chapter_summary_meeting #####");

		String id = (String) session.getAttribute("memberid");
		if (id == null) {
			return "login";
		}
		return "chapter_summary_meeting";
	}
	@RequestMapping(value = "/chapter_summary_reference", method = RequestMethod.GET)
	public String chapter_summary_reference(Locale locale, Model model, HttpSession session) {
		logger.info("##### chapter_summary_reference #####");

		String id = (String) session.getAttribute("memberid");
		String role_id = (String) session.getAttribute("roleId");
		
		System.out.println("----------------User rol Id-----------"+role_id);
		
		if (id == null) {
			return "login";
		}
		return "chapter_summary_reference";
	}
	@RequestMapping(value = "/manageRmbDistrict/manage_district_fees", method = RequestMethod.GET)
	public String manage_district_fees(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome manage_district_fees");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/manage_district_fees";
	}
	
	
	@RequestMapping(value = "/manageRmbDistrict/chapters_summary_list", method = RequestMethod.GET)
	public String chapters_summaryByFellowship(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome chapters_summaryByFellowship");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/chapters_summary_list";
	}
	
	@RequestMapping(value = "/manageRmbDistrict/admin_summary", method = RequestMethod.GET)
	public String admin_summary(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome admin_summary");
		// Check Session Start
		String id = (String) session.getAttribute("adminid");
		if (id == null) {
			return "admin/index";
		}
		// Check Session End
		return "admin/admin_summary";
	}
	
	@RequestMapping(value = "/login_bk", method = RequestMethod.GET)
	public String login_bk(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Login");

		return "login_bk";
	}
	
	@RequestMapping(value = "/index_bk", method = RequestMethod.GET)
	public String index_bk(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome Login");

		return "index_bk";
	}
	@RequestMapping(value = "/member_bk", method = RequestMethod.GET)
	public String member_bk(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome member_bk");

		return "member_bk";
	}
	
	@RequestMapping(value = "/profile_bk", method = RequestMethod.GET)
	public String profile_bk(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome member_bk");
		 String id = (String) session.getAttribute("memberid");
			if (id == null) {
				return "login";
			}
		return "profile_bk";
	}
	
	@RequestMapping(value = "/mobile_dashboard", method = RequestMethod.GET)
	public String mobile_dashboard(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome mobile_dashboard");
		 String id = (String) session.getAttribute("memberid");
			if (id == null) {
				return "login";
			}
		return "mobile_dashboard";
	}
	@RequestMapping(value = "/mobile_member_details", method = RequestMethod.GET)
	public String mobile_member_details(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome mobile_member_details");
		// Check Session Start
		/**/
		return "mobile_member_details";
	}
	
	@RequestMapping(value = "/mobile_meeting", method = RequestMethod.GET)
	public String mobile_meeting(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome mobile_member_details");
		// Check Session Start
		/**/
		return "mobile_meeting";
	}
	
	
	@RequestMapping(value = "/mobile_reference", method = RequestMethod.GET)
	public String mobile_reference(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome mobile_reference");
		// Check Session Start
		/**/
		return "mobile_reference";
	}
	
	@RequestMapping(value = "/mobile_business_transaction", method = RequestMethod.GET)
	public String mobile_business_transaction(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
		logger.info("Welcome mobile_business_transaction");
		// Check Session Start
		/**/
		return "mobile_business_transaction";
	}
	
	   @RequestMapping(value = "/mobile_business", method = RequestMethod.GET)
	    public String mobile_business(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
	        logger.info("Welcome mobile_business_transaction");
	        String id = (String) session.getAttribute("memberid");
			if (id == null) {
				return "login";
			}
	        return "mobile_business";
	    }
	   
	
	   @RequestMapping(value = "/mobile_refferal_list", method = RequestMethod.GET)
       public String mobile_refferal_list(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
           logger.info("Welcome mobile_refferal_list");
           String id = (String) session.getAttribute("memberid");
   		if (id == null) {
   			return "login";
   		}
           return "mobile_refferal_list";
       }
	
	   
	   @RequestMapping(value = "/manage_my_profile11", method = RequestMethod.GET)
       public String manage_my_profile11(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
           logger.info("Welcome manage_my_profile11");
           String id = (String) session.getAttribute("memberid");
   	/*	if (id == null) {
   			return "login";
   		}*/
           return "manage_my_profile11";
       }
	   @RequestMapping(value = "/edit_profile", method = RequestMethod.GET)
       public String edit_profile(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
           logger.info("Welcome manage_my_profile11");
           String id = (String) session.getAttribute("memberid");
   	/*	if (id == null) {
   			return "login";
   		}*/
           return "edit_profile";
       }
	   @RequestMapping(value = "/mobile_events", method = RequestMethod.GET)
       public String mobile_events(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
           logger.info("Welcome mobile_events");
           String id = (String) session.getAttribute("memberid");
   	/*	if (id == null) {
   			return "login";
   		}*/
           return "mobile_events";
       }
	   
	   @RequestMapping(value = "/event_details", method = RequestMethod.GET)
       public String event_details(String r, Locale locale, Model model, HttpSession session, SitePreference sitePreference) {
           logger.info("Welcome mobile_events");
           String id = (String) session.getAttribute("memberid");
   	/*	if (id == null) {
   			return "login";
   		}*/
           return "event_details";
       }
}