package com.ui.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.SignatureException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.razorpay.RazorpayClient;
//import com.razorpay.RazorpayException;
import com.ui.dao.CountryDAO;
import com.ui.dao.MemberDAO;
import com.ui.dao.PaymentDAO;
import com.ui.dao.RotaryYearDAO;
import com.ui.dao.StateDAO;
import com.ui.model.Country;
import com.ui.model.EventRegistration;
import com.ui.model.MemberCategoryByYear;
import com.ui.model.Members;
import com.ui.model.MembershipCharges;
import com.ui.model.Order;
//import com.ui.model.Orders;
import com.ui.model.Payment;
import com.ui.model.PaymentDetail;
import com.ui.model.PaymentImage;
//import com.ui.model.RegistrationModel;
import com.ui.model.State;

@RestController
public class PaymentController
{
	@Autowired	
	PaymentDAO paymentdao;
	@Autowired
	MemberDAO memberdao;
	@Autowired
	RotaryYearDAO rotaryyeardao;
	@Autowired
	CountryDAO countryDAO;
	@Autowired
	StateDAO stateDAO;
	
	Payment payment;
	PaymentImage paymentimage;
	MembershipCharges membershipCharges;
	PaymentDetail paymentDetail;
	MemberCategoryByYear memberCategoryByYear;
	EventRegistration eventRegistration;
	
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	
	@RequestMapping(value = "/getOrderDetailByOrderNumber", method = RequestMethod.GET, produces = "application/json")
    public Order getOrderDetailByOrderNumber(String ordernumber, HttpServletRequest request) {
        logger.info("***** GET ORDER DETAIL *****");
        Order od = paymentdao.getOrderDetailByOrderNumber(ordernumber);
        /*od.setOrderProductDetails(orderDao.getOrderProductDetailByOrderNumber(ordernumber));
        od.setProgramRegistration(programDao.getProgramRegistrationDetailById(
                orderDao.getOrderProductDetailByOrderNumber(ordernumber).getRegistrationId()));
        od.setOrderTaxList(orderDao.getOrderTaxByOrderNumber(ordernumber));*/

        return od;
    }
	
	
	
	@RequestMapping(value = "/getOrdersByDateAndPage", method = RequestMethod.GET, produces = "application/json")
    public List<Order> getOrdersByDate(String fromdate, String todate, int pagesize, int startindex, String eventtype, HttpServletRequest request) {
        logger.info("***** GET ORDERS By DATE *****");
        List<Order> od = paymentdao.getOrdersByDate(fromdate, todate,pagesize,startindex,eventtype);

        return od;
    }
	
	@RequestMapping(value = "/getMemberOrdersByDateAndPage", method = RequestMethod.GET, produces = "application/json")
    public List<Order> getMemberOrdersByDateAndPage(int memberid,String fromdate, String todate, int pagesize, int startindex, String eventtype, HttpServletRequest request) {
        logger.info("***** GET ORDERS By DATE *****");
        List<Order> od = paymentdao.getMemberOrdersByDateAndPage(memberid,fromdate, todate,pagesize,startindex,eventtype);

        return od;
    }
	
	@RequestMapping(value = "/getAllMembersOrderDetails", method = RequestMethod.GET, produces = "application/json")
    public List<Order> getAllMembersOrderDetails(int memberid,String fromdate, String todate, String eventtype, HttpServletRequest request) {
        logger.info("***** GET ORDERS By DATE *****");
        List<Order> od = paymentdao.getAllMembersOrderDetails(memberid,fromdate,todate,eventtype);

        return od;
    }
	
	@RequestMapping(value = "/getAllOrderDetails", method = RequestMethod.GET, produces = "application/json")
    public List<Order> getAllOrderDetails(String fromdate, String todate, String eventtype, HttpServletRequest request) {
        logger.info("***** GET ORDERS By DATE *****");
        List<Order> od = paymentdao.getAllOrderDetails(fromdate,todate,eventtype);

        return od;
    }
	
	@RequestMapping(value = "/searchOrderMembers", method = RequestMethod.GET, produces = "application/json")
	public List<Order> searchOrderMembers(HttpServletRequest request,String keyword) {
		logger.info("********** Inside paymnet Controller **********");

		List<Order> orlist = paymentdao.searchOrders(keyword);

		return orlist;
	}
	
	@RequestMapping(value = "/getMemberOrdersById", method = RequestMethod.GET, produces = "application/json")
    public List<Order> getMemberOrdersById(int memberid, String fromdate, String todate, HttpServletRequest request) {
        logger.info("***** GET ORDERS By MEMBERID AND DATE *****");
        List<Order> od = paymentdao.getMemberOrdersById(memberid, fromdate, todate);

        return od;
    }
	
	@RequestMapping(value = "/getOrderListByMemberId", method = RequestMethod.GET, produces = "application/json")
    public List<Order> getOrderListByMemberId(int memberid, HttpServletRequest request) {
        logger.info("***** GET ORDER DETAIL *****");
        List<Order> od = paymentdao.getOrderDetailByOrderNumber(memberid);

        return od;
    }
	
	@RequestMapping(value = "payPaymentOnline", method = RequestMethod.POST)
	public String payPaymentOnline(int eventid, int memberid , String firstname, String lastname, String email, String mobileno, String address1, String address2, int countryname, int statename, String cityname, String pincode, float amount, HttpServletRequest request,
			HttpSession session) {
		logger.info("***** ADD ORDER *****");
		
		//int id = Integer.parseInt(session.getAttribute("userid").toString());
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		String result = null;
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}
		
		String orderno = null;
		String ordernumber = null;

		int sequence = 0;

		Members m = memberdao.getMemberDetailByMemberId(memberid);
		Country c = countryDAO.getCountryDetailById(countryname);
		State s = stateDAO.getStateDetailById(statename);

		Order od = paymentdao.getLastOrderDetail();
		
		
		if (od == null) {
			sequence = 1;
			orderno = "RMBFB-" + "ORD" + "-00001";
			
		} else {
			

			sequence = od.getSequence();

			if (sequence == 0) {
				sequence = 1;
				orderno = "RMBFB-" + "ORD" + "-00001";
			} else {
			   				
				if (sequence >= 1 && sequence < 10) {
					orderno = "RMBFB-" + "ORD"+ "-0000" + Integer.toString(sequence);
				} else if (sequence >= 10 && sequence < 100) {
					orderno = "RMBFB-" + "ORD"+ "-000" + Integer.toString(sequence);
				} else if (sequence >= 100 && sequence < 1000) {
					orderno = "RMBFB-" + "ORD" + "-00" + Integer.toString(sequence);
				} else if (sequence >= 1000 && sequence < 10000) {
					orderno = "RMBFB-" + "ORD" + "-0" + Integer.toString(sequence);
				} else if (sequence >= 10000 && sequence < 100000) {
					orderno = "RMBFB-" + "ORD" + Integer.toString(sequence);
				}
			}
		}
		Order order = new Order();
	    
		order.setSequence(sequence + 1);
		order.setOrderNumber(orderno);
		
		order.setEventId(eventid);
		order.setCustomerName(m.getMemberFirstName() + " " + m.getMemberLastName());
		order.setCustomerEmailid(m.getMemberEmail());
		order.setCustomerMobileno(m.getMemberMobileNumber());

		order.setBillerName(firstname + " " + lastname);
		order.setBillerEmailid(email);
		order.setBillerMobileno(mobileno);
		order.setBillerAddress1(address1);
		order.setBillerAddress2(address2);
		order.setBillerCountryName(c.countryName);
		order.setBillerStateName(s.getStateName());
		order.setBillerCityName(cityname);
		order.setBillerPincode(pincode);
		
		//order.setOrderDate(q.getCreatedDate());
				
		order.setTotalAmount(amount);
		order.setSubTotal(amount);

		order.setMemberId(memberid);
		order.setOrderStatus("Incomplete");
		order.setPaymentStatus("Unpaid");
		order.setPaymentMode("To Be Selected");
		//order.setOrderDate(q.getCreatedDate());
		order.setCreatedBy(memberid);
		order.setIpAddress(IpAddress);

		session.setAttribute("totalamount", order.getTotalAmount());
		
		session.setAttribute("billingname", order.getBillerName());
		session.setAttribute("billingemail", order.getBillerEmailid());
		session.setAttribute("billingaddress1", order.getBillerAddress1());
		session.setAttribute("billingaddress2", order.getBillerAddress2());
		session.setAttribute("billingcountryname", order.getBillerCountryName());
		session.setAttribute("billingstatename", order.getBillerStateName());
		session.setAttribute("billingcityname", order.getBillerCityName());
		session.setAttribute("billingpincode", order.getBillerPincode());
		session.setAttribute("billingmobileno", order.getBillerMobileno());
				
		paymentdao.addOrder(order);

		ordernumber = paymentdao.getLastOrderDetail().getOrderNumber();

		session.setAttribute("ordernumber", ordernumber);

		return result;
	}
	
	
	
	
	//String address1, String address2, int countryname, int statename, String cityname, String pincode, float amount
	
	
	@RequestMapping(value = "payregistrationfees", method = RequestMethod.POST)
	public String payregistrationfees(int eventid, int memberid , String firstname, String lastname, String email, String mobileno,String address1, String address2, HttpServletRequest request,
			HttpSession session) {
		logger.info("***** ADD ORDER *****");
		
		//int id = Integer.parseInt(session.getAttribute("userid").toString());
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		String result = null;
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}
		
		String orderno = null;
		String ordernumber = null;

		int sequence = 0;

		Members m = memberdao.getMemberDetailByMemberId(memberid);
		//Country c = countryDAO.getCountryDetailById(countryname);
		//State s = stateDAO.getStateDetailById(statename);

		Order od = paymentdao.getLastOrderDetail();
		
		
		if (od == null) {
			sequence = 1;
			orderno = "RMBFB-" + "ORD" + "-00001";
			
		} else {
			

			sequence = od.getSequence();

			if (sequence == 0) {
				sequence = 1;
				orderno = "RMBFB-" + "ORD" + "-00001";
			} else {
			   				
				if (sequence >= 1 && sequence < 10) {
					orderno = "RMBFB-" + "ORD"+ "-0000" + Integer.toString(sequence);
				} else if (sequence >= 10 && sequence < 100) {
					orderno = "RMBFB-" + "ORD"+ "-000" + Integer.toString(sequence);
				} else if (sequence >= 100 && sequence < 1000) {
					orderno = "RMBFB-" + "ORD" + "-00" + Integer.toString(sequence);
				} else if (sequence >= 1000 && sequence < 10000) {
					orderno = "RMBFB-" + "ORD" + "-0" + Integer.toString(sequence);
				} else if (sequence >= 10000 && sequence < 100000) {
					orderno = "RMBFB-" + "ORD" + Integer.toString(sequence);
				}
			}
		}
		EventRegistration event = new EventRegistration();
	    
		event.setSequence(sequence + 1);
		//event.set(orderno);
		
		event.setEventId(eventid);
		event.setFirstName(m.getMemberFirstName());
		event.setEmailId(m.getMemberEmail());
		event.setMobileNo(m.getMemberMobileNumber());

		//event.setBillerName(firstname + " " + lastname);
		//event.setBillerEmailid(email);
		//event.setBillerMobileno(mobileno);
		//order.setBillerAddress1(address1);
		//order.setBillerAddress2(address2);
		//order.setBillerCountryName(c.countryName);
		//order.setBillerStateName(s.getStateName());
		//order.setBillerCityName(cityname);
		//order.setBillerPincode(pincode);
		
		//order.setOrderDate(q.getCreatedDate());
				
		//order.setTotalAmount(amount);
		//order.setSubTotal(amount);

		///event.setEventId(memberid);
		event.setOrderStatus("Incomplete");
		event.setPaymentRefNo("Unpaid");
		//event.setPaymentMode("To Be Selected");
		//order.setOrderDate(q.getCreatedDate());
		event.setCreatedBy(memberid);
		event.setIpAddress(IpAddress);

		session.setAttribute("totalamount", event.getAmount());
		
		session.setAttribute("billingname", event.getFirstName());
		session.setAttribute("billingemail", event.getEmailId());
		//session.setAttribute("billingaddress1", event.getBillerAddress1());
		//session.setAttribute("billingaddress2", event.getBillerAddress2());
		//session.setAttribute("billingcountryname", event.getBillerCountryName());
		//session.setAttribute("billingstatename", event.getBillerStateName());
		//session.setAttribute("billingcityname", event.getBillerCityName());
		//session.setAttribute("billingpincode", event.getBillerPincode());
		session.setAttribute("billingmobileno", event.getMobileNo());
				
//		paymentdao.addPayment(event);
//
//		ordernumber = paymentdao.getLastOrderDetail().getOrderNumber();
//
//		session.setAttribute("ordernumber", ordernumber);

		return result;
	}
	
	
	
	
	
	
	
	
	@PostMapping("/RZPorderSuccess")
	  public String orderSuccess(HttpServletRequest request, HttpSession session, HttpServletResponse response)
	  {
	    logger.info("*************** RAZOR PAY ORDER SUCCESS ***************");
	   // String payment_id = request.getParameter("razorpay_payment_id");
	   // String razorpay_order_id = request.getParameter("razorpay_order_id");
	   //String razorpay_signature = request.getParameter("razorpay_signature");
	    
	    EventRegistration OrderDetails = new EventRegistration();
	    String orderNumber = (String) session.getAttribute("OrderNumber");
	   // OrderDetails = orderDao.getOrderDetailsByOrderNumber(orderNumber);
	    
	    
	    
	    Members user = null;
	    user = memberdao.getMemberByMemberId(OrderDetails.getMemberId());
	    
	    session.setAttribute("userid", OrderDetails.getMemberId());
	    session.setAttribute("username", user.getMemberFirstName());
	    //session.setAttribute("userFirstName", user.getFirstname());
	    //session.setAttribute("userLastName", user.getLastname());
	    session.setAttribute("usertypeid", user.getUserTypeId());
	    session.setAttribute("emailid", user.getMemberEmail());
	    session.setAttribute("mobileno", user.getMemberMobileNumber());
	    session.setAttribute("OrderNumber", orderNumber);
	    
	    String status = "";
	    /*try {
	      String mySign = calculateRFC2104HMAC(OrderDetails.getAmount() + "|" + payment_id,"MLkzYipEXSfvTEzf8KcG6fS0");
	      if (mySign.equals(razorpay_signature)) {
	        status = "y";
	        sendConfirmationEmail(orderNumber, user.getEmail(), request );
	      }else
	        status = "n";
	    } catch (SignatureException e) {
	      e.printStackTrace();
	    }*/
	    
	    //OrderDetails.setRazor_payment_id(payment_id);
	    //OrderDetails.setRazor_signature(razorpay_signature);
	    //OrderDetails.setRazor_signature_status(status);
	    //OrderDetails.setOrder_status("Under-Process");
	    //OrderDetails.setPayment_status("Success");
	    //OrderDetails.setDelivery_status("Would Initiate");
	    
	    
	    //String result = orderDao.updateOrderStatus(OrderDetails);
	    
	   /* DunzoResp = deliveryCon.createDunzoOrder(session);
	    if(DunzoResp != null)
	    {
	      if(DunzoResp.getState().equals("created"))
	      {
	        OrderDetails.setDelivery_status("In Progress");
	        OrderDetails.setDunzoTrackingID(DunzoResp.getTask_id());
	      }else
	      {
	        OrderDetails.setDelivery_status("Failed to intitate Delivery");
	        OrderDetails.setDunzo_status_code(DunzoResp.getCode());
	        OrderDetails.setDunzo_status_message(DunzoResp.getMessage());
	        OrderDetails.setDunzo_error_details(DunzoResp.getFailure_Details());
	      }
	      result = orderDao.updateOrderStatus(OrderDetails);
	    }*/
	    
	    
	    try {
	      session.setAttribute("OrderNumber",orderNumber);
	      session.setAttribute("cart", null);
	      session.setAttribute("ItemsInCart", null);
	      session.setAttribute("cartTotal", null);
	      session.setAttribute("shippingCharges",null);
	      response.sendRedirect(request.getContextPath()+"/order-success");
	    } catch (IOException e) {
	      e.printStackTrace();
	    }
	    return "result";
	  }
	  
	
	
	
	
	  
	
	
	
	
	public void createRazorpayOrder(float amount, String orderNumber)
	  {
	    logger.info("*************** createRazorpayOrder ***************");
	    System.out.println("++++++++"+amount);
	    amount = (float) (Math.round(amount * 100.0) / 100.0);
	    System.out.println("++++++++"+amount);
	    
	    amount = amount*100;
	    System.out.println("++++++++"+amount);
	    try {
	      //RazorpayClient razorpayClient = new RazorpayClient("rzp_test_9MRf3pAnswhPzp", "suPRuZKYh3CJzrCs7weh5GrM"); // Local
	      RazorpayClient razorpayClient = new RazorpayClient("rzp_live_6ZW8zMV9ab9aH7", "dj6Nxv22enTmQutQ4srv7fl3"); // Live
	      
	      JSONObject orderRequest = new JSONObject();
	      orderRequest.put("amount", amount); // amount in the smallest currency unit
	      orderRequest.put("currency", "INR");
	      orderRequest.put("receipt", orderNumber);

	      com.razorpay.Order order = razorpayClient.Orders.create(orderRequest); // the Order in here is a class of razor pay dont do anything with it
	    
	      System.out.println("the response from razorPay is as ======="+order);
	      return;
	    } catch (Exception e) {
	      System.out.println(e.getMessage());
	      return;
	    }
	    
	  }
	
	
	
	
	
	
	@RequestMapping(value = "ccavenueResponse", method = RequestMethod.POST)
	public String ccavenueResponse(String orderid, String trackingid, String bankrefnumber, String orderstatus,
			String failuremessage, String paymentmode, String cardname, String statuscode, String statusmessage,
			String currency, String createddate, String createdtime, HttpSession session, HttpServletRequest request,
			HttpServletResponse res) {
		logger.info("***** ADD CCAVENUE RESPONSE *****");

		trackingid = trackingid.equalsIgnoreCase("null") ? "" : trackingid;
		bankrefnumber = bankrefnumber.equalsIgnoreCase("null") ? "" : bankrefnumber;
		orderstatus = orderstatus.equalsIgnoreCase("null") ? "" : orderstatus;
		failuremessage = failuremessage.equalsIgnoreCase("null") ? "" : failuremessage;
		paymentmode = paymentmode.equalsIgnoreCase("null") ? "" : paymentmode;
		cardname = cardname.equalsIgnoreCase("null") ? "" : cardname;
		statuscode = statuscode.equalsIgnoreCase("null") ? "" : statuscode;
		currency = currency.equalsIgnoreCase("null") ? "" : currency;

		Order orderDetail = new Order();
		orderDetail.setOrderNumber(orderid);
		orderDetail.setTrackingId(trackingid.isEmpty() ? "" : trackingid);
		orderDetail.setBankReferenceNumber(bankrefnumber.isEmpty() ? "" : bankrefnumber);
		orderDetail.setOrderStatus("New");
		orderDetail.setFailureMessage(failuremessage.isEmpty() ? "" : failuremessage);
		orderDetail.setPaymentStatus(orderstatus.isEmpty() ? "" : orderstatus);
		orderDetail.setPaymentMode(paymentmode.isEmpty() ? "" : paymentmode);
		orderDetail.setCardName(cardname.isEmpty() ? "" : cardname);
		orderDetail.setBankName(cardname.isEmpty() ? "" : cardname);
		orderDetail.setStatusCode(statuscode.isEmpty() ? 0 : Integer.parseInt(statuscode));
		orderDetail.setCurrency(currency.isEmpty() ? "" : currency);

		session.setAttribute("orderStatus", orderstatus);
		session.setAttribute("trackingid", trackingid);

		paymentdao.addCcavenueResponse(orderDetail);

		return "Success";

	}
	
	
	
	@RequestMapping(value="/getAllInstallment", method= RequestMethod.GET, produces = "application/json")
	public List<Payment> getAllInstallment(HttpServletRequest request)
	{
		logger.info("Inside Get All Installment");
		
		List<Payment> installment = paymentdao.getAllInstallment();
		
		return installment;
	}
	
	@RequestMapping(value="/getpayment", method= RequestMethod.GET, produces = "application/json")
	public List<Payment> getpayment(int memberid, HttpServletRequest request)
	{
		logger.info("Inside Get Payment");		
		List<Payment> payment = paymentdao.getPayment(memberid);		
		return payment;
	}
	
	
	@RequestMapping(value="addPaymentCheque", method= RequestMethod.POST)
	public String addPaymentCheque(String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String bankname, String branchname, String accountnumber, String chequenumber, String chequedate, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Add Member Payment Cheque");	
		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";
		
		payment = new Payment(transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,bankname,branchname,accountnumber,chequenumber,chequedate,comments,amountcharges,Integer.parseInt(session.getAttribute("memberid").toString()),s,1,IpAddress);		
		paymentdao.addPaymentCheque(payment);
	
		return "";
	}
	
	@RequestMapping(value="addPaymentDemandDraft", method= RequestMethod.POST)
	public String addPaymentDemandDraft(String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String bankname, String branchname, String accountnumber, String demanddraftnumber, String demanddraftdate, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Add Member Payment Demand Draft");	
		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";
		
		payment = new Payment(transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,bankname,branchname,accountnumber,demanddraftnumber,demanddraftdate,comments,amountcharges,Integer.parseInt(session.getAttribute("memberid").toString()),s,1,IpAddress);	
		paymentdao.addPaymentDemandDraft(payment);
	
		return "";
	}
	
	@RequestMapping(value="addPaymentNeft", method= RequestMethod.POST)
	public String addPaymentNeft(String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String bankname, String branchname, String accountnumber, String transactionnumber, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Add Member Payment NEFT");	
		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		
		String s = "y";

		payment = new Payment(transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,bankname,branchname,accountnumber,transactionnumber,comments,amountcharges,Integer.parseInt(session.getAttribute("memberid").toString()),s,1,IpAddress);
		
		paymentdao.addPaymentNeft(payment);		
	
		return "";
	}
	
	@RequestMapping(value="addPaymentCash", method= RequestMethod.POST)
	public String addPaymentCash(String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String transactionnumber, String contactnumber, String paymentplace, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Add Member Payment Cash");			
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}		
		String s = "y";		
		payment = new Payment(transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,transactionnumber,contactnumber,paymentplace,comments,amountcharges,Integer.parseInt(session.getAttribute("memberid").toString()),s,1,IpAddress);
		paymentdao.addPaymentCash(payment);		
	
		return "";
	}
	
	@RequestMapping(value="addPaymentOther", method= RequestMethod.POST)
	public String addPaymentOther(String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String transactionnumber, String contactnumber, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Add Member Payment Other");		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";		
		payment = new Payment(transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,transactionnumber,contactnumber,comments,amountcharges,Integer.parseInt(session.getAttribute("memberid").toString()),s,1,IpAddress);
		paymentdao.addPaymentOther(payment);
		
		return "";
	}
	
	@RequestMapping(value="addPaymentImage", method= RequestMethod.POST)
	public String addPaymentImage(@RequestParam(value="file", required=false) MultipartFile[] file,HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Add Product Sourcing Payment Image");		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		
		int paymentid = paymentdao.getLastPaymentId();
		
		String image = null;

		try
		{
			if (file != null && file.length > 0)
			{
				try
				{
					for(int i=0; i<file.length; i++)
					{
						byte[] bytes =  file[i].getBytes();
						
						File dir = new File(request.getRealPath("")+"/resources/admin/images/" + File.separator + "payment");
		    			if (!dir.exists()) 
		    				dir.mkdirs();
						
		    			String path = request.getRealPath("/resources/admin/images/payment/");
			            File uploadfile = new File(path+File.separator+file[i].getOriginalFilename());
			            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(uploadfile));
			            bufferedOutputStream.write(bytes);
			            bufferedOutputStream.close();
			            
			            //image = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+"/rcbsEvent/resources/admin/images/payment/"+file[i].getOriginalFilename();
			            image = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+"/resources/admin/images/payment/"+file[i].getOriginalFilename();
			            
			            paymentimage = new PaymentImage(image,paymentid,1,IpAddress);			    		
			    		paymentdao.addPaymentImage(paymentimage);
					}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		
		
		return "";
	}
	
	@RequestMapping(value="/deletePaymentImage",method=RequestMethod.DELETE)
	public void deletePaymentImage(int paymentid)
	{
		paymentdao.deletePaymentImage(paymentid);
	}
	
	@RequestMapping(value="editPaymentCheque", method= RequestMethod.POST)
	public String editPaymentCheque(int paymentid, String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String bankname, String branchname, String accountnumber, String chequenumber, String chequedate, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Edit Payment Cheque");		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";
		
		payment = new Payment(paymentid, transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,bankname,branchname,accountnumber,chequenumber,chequedate,comments,amountcharges,s,1,IpAddress);		
		paymentdao.editPaymentCheque(payment);
	
		return "";
	}
	
	@RequestMapping(value="editPaymentDemandDraft", method= RequestMethod.POST)
	public String editPaymentDemandDraft(int paymentid, String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String bankname, String branchname, String accountnumber, String demanddraftnumber, String demanddraftdate, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Edit Payment Demand Draft");	
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";
		
		payment = new Payment(paymentid, transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,bankname,branchname,accountnumber,demanddraftnumber,demanddraftdate,comments,amountcharges,s,1,IpAddress);
		paymentdao.editPaymentDemandDraft(payment);
	
		return "";
	}
	
	@RequestMapping(value="editPaymentNeft", method= RequestMethod.POST)
	public String editPaymentNeft(int paymentid, String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String bankname, String branchname, String accountnumber, String transactionnumber, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Edit Payment NEFT");		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		
		String s = "y";

		payment = new Payment(paymentid, transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,bankname,branchname,accountnumber,transactionnumber,comments,amountcharges,s,1,IpAddress);
		paymentdao.editPaymentNeft(payment);		
	
		return "";
	}
	
	@RequestMapping(value="editPaymentCash", method= RequestMethod.POST)
	public String editPaymentCash(int paymentid, String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String transactionnumber, String contactnumber, String paymentplace, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Edit Payment Cash");	
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		
		String s = "y";
		
		payment = new Payment(paymentid, transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,transactionnumber,contactnumber,paymentplace,comments,amountcharges,s,1,IpAddress);
		paymentdao.editPaymentCash(payment);		
	
		return "";
	}
	
	@RequestMapping(value="editPaymentOther", method= RequestMethod.POST)
	public String editPaymentOther(int paymentid, String transactiondate, float transactionamount, int currencyidtransactionamount, float transactioncharges, int currencyidtransactioncharges, String paidtowhom, String paymenttype, String transactionnumber, String contactnumber, String comments, float amountcharges, HttpServletRequest request, HttpSession session)
	{
		logger.info("Inside Edit Payment Other");		
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null)
		{
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";
		
		payment = new Payment(paymentid, transactiondate,transactionamount,currencyidtransactionamount,transactioncharges,currencyidtransactioncharges,paidtowhom,paymenttype,transactionnumber,contactnumber,comments,amountcharges,s,1,IpAddress);
		paymentdao.editPaymentOther(payment);
		
		return "";
	}
	
	@RequestMapping(value="/deletePayment",method=RequestMethod.DELETE)
	public void deletePayment(int paymentid)
	{
		paymentdao.deletePayment(paymentid);
	}
	
	@RequestMapping(value="addMembershipCharges", method= RequestMethod.POST)
	public String addMembershipCharges(int rotaryyearid, int membercategoryid, float billingamount, int currencyid, HttpServletRequest request, HttpSession session) {
		logger.info("***** ADD MEMBERSHIP CHARGES *****");	
		int id  = (Integer) session.getAttribute("loginid");
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";		
		membershipCharges = new MembershipCharges(rotaryyearid,membercategoryid,billingamount,currencyid,s,id,IpAddress);
		paymentdao.addMembershipCharges(membershipCharges);	
		
		return "Success";
	}
	
	@RequestMapping(value="/getMembershipCharges", method= RequestMethod.GET, produces = "application/json")
	public List<MembershipCharges> getMembershipCharges(int rotaryyearid, HttpServletRequest request) {
		logger.info("***** GET MEMBERSHIP CHARGES *****");		
		List<MembershipCharges> membershipCharges = paymentdao.getMembershipCharges(rotaryyearid);		
		return membershipCharges;
	}
	
	@RequestMapping(value="/getMembershipChargesByMember", method= RequestMethod.GET, produces = "application/json")
	public List<Members> getMembershipChargesByMember(HttpServletRequest request) {
		logger.info("***** GET MEMBERSHIP CHARGES BY MEMBER *****");		
		List<Members> member = paymentdao.getMembershipChargesByMember();		
		return member;
	}
	
	@RequestMapping(value="addMembershipPaymentTransaction", method= RequestMethod.POST)
	public String addMembershipPaymentTransaction(int memberid, int rotaryyearid, int membercategoryid, float billingamount, int currencyid, HttpServletRequest request, HttpSession session) {
		logger.info("***** ADD MEMBERSHIP PAYMENT TRASACTION *****");	
		int id  = (Integer) session.getAttribute("loginid");
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}
		String s = "y";
		
		/*memberCategoryByYear = new MemberCategoryByYear(rotaryyearid, memberid, membercategoryid, id, IpAddress);
		memberdao.addMemberCategoryByRotaryYear(memberCategoryByYear);*/
		
		paymentDetail = new PaymentDetail(1,rotaryyearid,memberid,membercategoryid,billingamount,currencyid,"Unpaid",s,id,IpAddress);
		paymentdao.addMembershipPaymentTransaction(paymentDetail);
		
		memberCategoryByYear = new MemberCategoryByYear(rotaryyearid, memberid, membercategoryid, id, IpAddress);
		memberdao.addMemberCategoryByRotaryYear(memberCategoryByYear);
		
		return "Success";	
	}
	
	@RequestMapping(value="/getPendingPaymentsByPage", method= RequestMethod.GET, produces = "application/json")
	public List<PaymentDetail> getPendingPaymentsByPage(int pagesize, int startindex, HttpServletRequest request) {
		logger.info("********** GET PENDING PAYMENTS BY PAGE **********");		
		List<PaymentDetail> paymentDetail = paymentdao.getPendingPaymentsByPage(pagesize, startindex);		
		return paymentDetail;
	}
	
	@RequestMapping(value="/getAllPendingPayments", method= RequestMethod.GET, produces = "application/json")
	public List<PaymentDetail> getAllPendingPayments(HttpServletRequest request) {
		logger.info("********** GET ALL PENDING PAYMENTS **********");		
		List<PaymentDetail> paymentDetail = paymentdao.getAllPendingPayments();		
		return paymentDetail;
	}
	
	@RequestMapping(value="/searchPendingPayments", method= RequestMethod.GET, produces = "application/json")
	public List<PaymentDetail> searchAdmittedPatient(String keyword, HttpServletRequest request) {
		logger.info("********** SEARCH PENDING PAYMENTS **********");			
		List<PaymentDetail> PaymentDetail = paymentdao.searchPendingPayments(keyword);		
		return PaymentDetail;
	}
	
	@RequestMapping(value="/getPendingPaymentDetailByMemberId", method= RequestMethod.GET, produces = "application/json")
	public PaymentDetail getPendingPaymentDetailByMemberId(int memberid, HttpServletRequest request) {
		logger.info("********** GET PAYMENT DETAIL BY MEMBER ID **********");			
		PaymentDetail PaymentDetail = paymentdao.getPendingPaymentDetailByMemberId(memberid);		
		return PaymentDetail;
	}
	
	@RequestMapping(value="addPaymentInfo", method= RequestMethod.POST)
	public String addPaymentInfo(int id, String paymentmethod, String bankname, String branchname, String chequeno, String paymentdate, float paidamount, HttpServletRequest request, HttpSession session) {
		logger.info("***** ADD PAYMENT INFO *****");	
		  int  cid = Integer.parseInt(session.getAttribute("adminid").toString()); 
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}		
		
		String paymentno = null;
		int sequence = 0;
		
		String currentYear = rotaryyeardao.getCurrentRotaryYearCode();
		String currentyearcode1 = currentYear.substring(14, 16);
		String currentyearcode2 = currentYear.substring(17, 19);
		String currentyearcode = currentyearcode1+currentyearcode2;
		
		paymentno = paymentdao.getLastPaymentNo();
		
		if(paymentno == null) {
			sequence = 1;
			paymentno = "RMB" + currentyearcode + "00001";
			paymentDetail = new PaymentDetail(id,sequence,paymentno,"Paid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
		//	paymentdao.addPaymentInfo(paymentDetail);
			paymentdao.addMembershipPaymentTransaction1(paymentDetail);
			return "Success";
		} else {
			String pn = paymentno;			
			String rotaryyearcode = pn.substring(4, 8);			
			sequence = paymentdao.getLastSequence();
			
			if(sequence == 0) {
				sequence = 1;
				paymentno = "RMB" + currentyearcode + "00001";
				paymentDetail = new PaymentDetail(id,sequence,paymentno,"Paid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
			//	paymentdao.addPaymentInfo(paymentDetail);
				paymentdao.addMembershipPaymentTransaction1(paymentDetail);
				return "Success";
			} else {
				if(currentyearcode.equals(rotaryyearcode)) {					
					sequence = sequence + 1;					
				} else {
					sequence = 1;					
				}
				
				if(sequence >= 1 && sequence < 10) {
					paymentno = "RMB" + currentyearcode + "0000" + Integer.toString(sequence);
				}
				else if(sequence >= 10 && sequence < 100)
				{
					paymentno = "RMB" + currentyearcode + "000" + Integer.toString(sequence);
				}
				else if(sequence >= 100 && sequence < 1000)
				{
					paymentno = "RMB" + currentyearcode + "00" + Integer.toString(sequence);
				}
				else if(sequence >= 1000 && sequence < 10000)
				{
					paymentno = "RMB" + currentyearcode + "0" + Integer.toString(sequence);
				}
				else if(sequence >= 10000 && sequence < 100000)
				{
					paymentno = "RMB" + currentyearcode + Integer.toString(sequence);
				}
				
				paymentDetail = new PaymentDetail(id,sequence,paymentno,"Paid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
		
				
				//paymentdao.addPaymentInfo(paymentDetail);
				paymentdao.addMembershipPaymentTransaction1(paymentDetail);
				return "Success";
			}
		}	
	}
	
	@RequestMapping(value="addPaymentInfo2", method= RequestMethod.POST)
	public String addPaymentInfo2(int id, String paymentmethod, String bankname, String branchname, String chequeno, String paymentdate, float paidamount, HttpServletRequest request, HttpSession session) {
		logger.info("***** ADD PAYMENT INFO *****");	
		  int  cid = Integer.parseInt(session.getAttribute("adminid").toString()); 
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}		
		
			String paymentno = null;
			int sequence = 0;

			paymentDetail = new PaymentDetail(id,id,sequence,paymentno,"Paid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
		
			System.out.println("-------paidamount----------"+paidamount);
			System.out.println("-------id----------"+id);
			System.out.println("-------paymentno----------"+paymentno);
				
				paymentdao.addPaymentInfo(paymentDetail);
				paymentdao.UpdateTransaction(paymentDetail);
				return "Success";
			
		
	}

	
	
	@RequestMapping(value="addPaymentInfo1", method= RequestMethod.POST)
	public synchronized String addPaymentInfo1(int memberCategoryId,int member_id,float rmbdfees,float rmbfees,int rotaryYearId, float paid_amount, HttpServletRequest request, HttpSession session) {
		logger.info("***** ADD PAYMENT INFO 1*****");	
	
		//  int  cid = Integer.parseInt(session.getAttribute("adminid").toString());
		int  cid=1;
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}		
		
		String paymentno = null;
		int sequence = 0;
		int transactionForId=1;
		int currencyId=1;
		String status="y";
		String currentYear = rotaryyeardao.getCurrentRotaryYearCode();
		String currentyearcode1 = currentYear.substring(14, 16);
		String currentyearcode2 = currentYear.substring(17, 19);
		String currentyearcode = currentyearcode1+currentyearcode2;
		
		paymentno = paymentdao.getLastPaymentNo();
	System.out.println("--------------paymentno---------------------------"+paymentno);
		if(paymentno == null) {
			sequence = 1;
			paymentno = "RMB" + currentyearcode + "00001";
			System.out.println("-First If-"+paymentno);
			paymentDetail = new PaymentDetail(memberCategoryId,member_id,sequence,paymentno,"UnPaid",rotaryYearId,rmbdfees,rmbdfees,paid_amount,cid,IpAddress,transactionForId,currencyId,status);
			paymentdao.addMembershipPaymentTransaction1(paymentDetail);
			return "Success";
		} else {
			String pn = paymentno;			
			String rotaryyearcode = pn.substring(4, 8);			
			sequence = paymentdao.getLastSequence();
			
			if(sequence == 0) {
				sequence = 1;
				paymentno = "RMB" + currentyearcode + "00001";
				System.out.println("- First If-"+paymentno);
				//paymentDetail = new PaymentDetail(id,sequence,paymentno,"UnPaid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
				paymentDetail = new PaymentDetail(memberCategoryId,member_id,sequence,paymentno,"UnPaid",rotaryYearId,rmbdfees,rmbfees,paid_amount,cid,IpAddress,transactionForId,currencyId,status);
				paymentdao.addMembershipPaymentTransaction1(paymentDetail);
				return "Success";
			} else {
				if(currentyearcode.equals(rotaryyearcode)) {					
					sequence = sequence + 1;	
					System.out.println("- If-"+sequence);
				} else {
					//sequence = 1;		
					sequence = sequence + 1;
					System.out.println("-Else If-"+sequence);
				}
				
				if(sequence >= 1 && sequence < 10) {
					paymentno = "RMB" + currentyearcode + "0000" + Integer.toString(sequence);
				}
				else if(sequence >= 10 && sequence < 100)
				{
					paymentno = "RMB" + currentyearcode + "000" + Integer.toString(sequence);
				}
				else if(sequence >= 100 && sequence < 1000)
				{
					paymentno = "RMB" + currentyearcode + "00" + Integer.toString(sequence);
				}
				else if(sequence >= 1000 && sequence < 10000)
				{
					paymentno = "RMB" + currentyearcode + "0" + Integer.toString(sequence);
				}
				else if(sequence >= 10000 && sequence < 100000)
				{
					paymentno = "RMB" + currentyearcode + Integer.toString(sequence);
				}

				System.out.println("--------------paymentno Generate---------------------------"+paymentno);
				paymentDetail = new PaymentDetail(memberCategoryId,member_id,sequence,paymentno,"UnPaid",rotaryYearId,rmbdfees,rmbfees,paid_amount,cid,IpAddress,transactionForId,currencyId,status);
			//	paymentDetail = new PaymentDetail(id,sequence,paymentno,"UnPaid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
				paymentdao.addMembershipPaymentTransaction1(paymentDetail);
				paymentdao.addMembershipTransaction(paymentDetail);
				return "Success";
			}
		}	
	}
	
	@RequestMapping(value="/getPaymentHistoryByPage", method= RequestMethod.GET, produces = "application/json")
	public List<PaymentDetail> getPaymentHistoryByPage(int rotaryyearid, int pagesize, int startindex, HttpServletRequest request,HttpSession session) {
		logger.info("********** GET PAYMENT HISTORY BY PAGE **********");		
		
	int fellowship_id = Integer.parseInt(session.getAttribute("fellowshipId").toString()); 
		int role_id = Integer.parseInt(session.getAttribute("roleId").toString()); 
		
		/*
		 * List<PaymentDetail> paymentDetail =
		 * paymentdao.getPaymentHistoryByPage(rotaryyearid, pagesize, startindex);
		 * 
		 * return paymentDetail;
		 */
	
	List<PaymentDetail> paymentDetail;
		
		if(role_id == 1) {
			paymentDetail = paymentdao.getPaymentHistoryByPage(rotaryyearid, pagesize, startindex);	
			System.out.println("rotaryyearid:-"+rotaryyearid);
				}
				else {
					System.out.println("fellowship_id:-"+fellowship_id);
				 paymentDetail = paymentdao.getPaymentHistoryByPage1(rotaryyearid, pagesize, startindex,fellowship_id);	
	}
		return paymentDetail;
	}
	
	@RequestMapping(value="/getAllPaymentHistory", method= RequestMethod.GET, produces = "application/json")
	public List<PaymentDetail> getAllPaymentHistory(int rotaryyearid, HttpServletRequest request) {
		logger.info("********** GET ALL PAYMENT HISTORY **********");		
		List<PaymentDetail> paymentDetail = paymentdao.getAllPaymentHistory(rotaryyearid);		
		return paymentDetail;
	}
	
	@RequestMapping(value="addPayment", method= RequestMethod.POST)
	public String addPayment(int memberid, int rotaryyearid, int membercategoryid, String paymentmethod, String bankname, String branchname, String chequeno, String paymentdate, float paidamount, HttpServletRequest request, HttpSession session) {
		logger.info("***** ADD PAYMENT *****");	
		//int cid  = (Integer) session.getAttribute("loginid");
		//  int  cid = Integer.parseInt(session.getAttribute("adminid").toString());  
		 int  cid =1;
		  System.out.println("--------------login Id -------------------"+cid);
		String IpAddress = request.getHeader("X-FORWARDED-FOR");
		if (IpAddress == null) {
			IpAddress = request.getRemoteAddr();
		}		
		
		String paymentno = null;
		int sequence = 0;
		
		String currentYear = rotaryyeardao.getCurrentRotaryYearCode();
		String currentyearcode1 = currentYear.substring(14, 16);
		String currentyearcode2 = currentYear.substring(17, 19);
		String currentyearcode = currentyearcode1+currentyearcode2;
		
		paymentno = paymentdao.getLastPaymentNo();
		
		if(paymentno == null) {
			sequence = 1;
			paymentno = "RMB" + currentyearcode + "00001";
			paymentDetail = new PaymentDetail(sequence,paymentno,rotaryyearid,memberid,membercategoryid,"Paid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
			paymentdao.addPayment(paymentDetail);
			return "Success";
		} else {
			String pn = paymentno;			
			String rotaryyearcode = pn.substring(4, 8);			
			sequence = paymentdao.getLastSequence();
			
			if(sequence == 0) {
				sequence = 1;
				paymentno = "RMB" + currentyearcode + "00001";
				paymentDetail = new PaymentDetail(sequence,paymentno,rotaryyearid,memberid,membercategoryid,"Paid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
				paymentdao.addPayment(paymentDetail);
				return "Success";
			} else {
				if(currentyearcode.equals(rotaryyearcode)) {					
					sequence = sequence + 1;					
				} else {
					sequence = 1;					
				}
				
				if(sequence >= 1 && sequence < 10) {
					paymentno = "RMB" + currentyearcode + "0000" + Integer.toString(sequence);
				}
				else if(sequence >= 10 && sequence < 100)
				{
					paymentno = "RMB" + currentyearcode + "000" + Integer.toString(sequence);
				}
				else if(sequence >= 100 && sequence < 1000)
				{
					paymentno = "RMB" + currentyearcode + "00" + Integer.toString(sequence);
				}
				else if(sequence >= 1000 && sequence < 10000)
				{
					paymentno = "RMB" + currentyearcode + "0" + Integer.toString(sequence);
				}
				else if(sequence >= 10000 && sequence < 100000)
				{
					paymentno = "RMB" + currentyearcode + Integer.toString(sequence);
				}
				
				paymentDetail = new PaymentDetail(sequence,paymentno,rotaryyearid,memberid,membercategoryid,"Paid",paymentmethod,bankname,branchname,chequeno,paymentdate,paidamount,cid,IpAddress);
				paymentdao.addPayment(paymentDetail);
				return "Success";
			}
		}	
	}
}