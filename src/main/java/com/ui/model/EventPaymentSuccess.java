package com.ui.model;

public class EventPaymentSuccess {
	
	private int PaymentStatusId;
	private int event_registration_id;
	
	private String PaymentStatus;
	private String status;
	private int CreatedBy;
	private String CreatedDate;
	private String IpAddress;
	
	
	
	
	
	public EventPaymentSuccess(int eventRegistrationId, String IpAddress) {
		
		this.event_registration_id=eventRegistrationId;
		
		this.IpAddress=IpAddress;
		
		
		
	}
	public EventPaymentSuccess(int event_registration_id, Object PaymentStatus, String IpAddress) {
		
		
		this.event_registration_id=event_registration_id;
		this.PaymentStatus=(String) PaymentStatus;
		this.IpAddress=IpAddress;
		
		// TODO Auto-generated constructor stub
	}
	public int getPaymentStatusId() {
		return PaymentStatusId;
	}
	public void setPaymentStatusId(int paymentStatusId) {
		PaymentStatusId = paymentStatusId;
	}
	public int getEvent_registration_id() {
		return event_registration_id;
	}
	public void setEvent_registration_id(int event_registration_id) {
		this.event_registration_id = event_registration_id;
	}

	public String getPaymentStatus() {
		return PaymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		PaymentStatus = paymentStatus;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getCreatedBy() {
		return CreatedBy;
	}
	public void setCreatedBy(int createdBy) {
		CreatedBy = createdBy;
	}
	public String getCreatedDate() {
		return CreatedDate;
	}
	public void setCreatedDate(String createdDate) {
		CreatedDate = createdDate;
	}
	public String getIpAddress() {
		return IpAddress;
	}
	public void setIpAddress(String ipAddress) {
		IpAddress = ipAddress;
	}
	
	
	
	
	
	
	

}
