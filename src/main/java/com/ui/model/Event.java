package com.ui.model;

public class Event {
	
	public Event(int eventId, String eventTitle, String eventDate, String eventTime, String eventDescription) {
		super();
		this.eventId = eventId;
		this.eventTitle = eventTitle;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
	}
	public Event(int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue, String eventMapLocation,
			String eventDate, String eventTime, String eventDescription, String registration, String paid, float rmbfbMember, float rotarian, float others, String status, int createdBy,
			String createdDate, String createdTime, String ipAddress) {
		super();
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
		this.rmbfbMember = rmbfbMember;
		this.rotarian = rotarian;
		this.others = others;
		this.status = status;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.createdTime = createdTime;
		this.ipAddress = ipAddress;
	}
	
	public Event(int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue, String eventMapLocation,
			String eventDate, String eventTime, String eventDescription, String registration, String paid, float rmbfbMember, float rotarian, float others, String status, int createdBy,
			String createdDate, String createdTime, String ipAddress,int fellowship_id) {
		super();
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
		this.rmbfbMember = rmbfbMember;
		this.rotarian = rotarian;
		this.others = others;
		this.status = status;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.createdTime = createdTime;
		this.ipAddress = ipAddress;
		this.fellowship_id=fellowship_id;
	}
	
	public Event(int eventId, int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue,
			String eventMapLocation, String eventDate, String eventTime, String eventDescription, String registration, String paid, float rmbfbMember, float rotarian, float others, String status,
			int createdBy, String createdDate, String createdTime, String ipAddress,int fellowship_id) {
		super();
		this.eventId = eventId;
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
		this.rmbfbMember = rmbfbMember;
		this.rotarian = rotarian;
		this.others = others;
		this.status = status;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.createdTime = createdTime;
		this.ipAddress = ipAddress;
		this.fellowship_id=fellowship_id;
	}
	
	public Event(int eventId, int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue,
			String eventMapLocation, String eventDate, String eventTime, String eventDescription, String registration, String paid, float rmbfbMember, float rotarian, float others, String status,
			int createdBy, String createdDate, String createdTime, String ipAddress) {
		super();
		this.eventId = eventId;
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
		this.rmbfbMember = rmbfbMember;
		this.rotarian = rotarian;
		this.others = others;
		this.status = status;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.createdTime = createdTime;
		this.ipAddress = ipAddress;
	}
	
	public Event(int eventId, int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue,
			String eventMapLocation, String eventDate, String eventTime, String eventDescription, String registration, String paid, float rmbfbMember, float rotarian, float others, String status,
			int createdBy, String createdDate, String createdTime, String ipAddress,String fellowship_name,int fellowship_id) {
		super();
		this.eventId = eventId;
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
		this.rmbfbMember = rmbfbMember;
		this.rotarian = rotarian;
		this.others = others;
		this.status = status;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.createdTime = createdTime;
		this.ipAddress = ipAddress;
		this.fellowship_name=fellowship_name;
		this.fellowship_id=fellowship_id;
		
	}
	public Event(int eventId, int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue,
			String eventMapLocation, String eventDate, String eventTime, String eventDescription, String registration, String paid, float rmbfbMember, float rotarian, float others, String status,
			int createdBy, String createdDate, String createdTime, String ipAddress,String fellowship_name,int fellowship_id,String image_title,String event_image) {
		super();
		this.eventId = eventId;
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
		this.rmbfbMember = rmbfbMember;
		this.rotarian = rotarian;
		this.others = others;
		this.status = status;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.createdTime = createdTime;
		this.ipAddress = ipAddress;
		this.fellowship_name=fellowship_name;
		this.fellowship_id=fellowship_id;
		this.image_title=image_title;
		this.event_image=event_image;
	}
	
	public Event(int eventId, int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue,
			String eventMapLocation, String eventDate, String eventTime, String eventDescription, String registration, String paid) {
		super();
		this.eventId = eventId;
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
	}
	
	public Event(int eventId, int eventTypeId, String eventTitle, String eventSubtitle, String eventVenue,
			String eventMapLocation, String eventDate, String eventTime, String eventDescription, String registration, String paid,int fellowship_id) {
		super();
		this.eventId = eventId;
		this.eventTypeId = eventTypeId;
		this.eventTitle = eventTitle;
		this.eventSubtitle = eventSubtitle;
		this.eventVenue = eventVenue;
		this.eventMapLocation = eventMapLocation;
		this.eventDate = eventDate;
		this.eventTime = eventTime;
		this.eventDescription = eventDescription;
		this.registration = registration;
		this.paid = paid;
		this.fellowship_id=fellowship_id;
	}
	
	public int eventId;
	public int eventTypeId;
	public String eventTitle;
	public String eventSubtitle;
	public String eventVenue;
	public String eventMapLocation;
	public String eventDate;
	public String eventTime;
	public String eventDescription;
	public String registration;
	public String paid;
	public float rmbfbMember;
	public float rotarian;
	public float others;
	
	public String status;
	public int createdBy;
	public String createdDate;
	public String createdTime;
	public String ipAddress;
	public int fellowship_id;
	public String fellowship_name;
	
	public String image_title;
	public String event_image;
	
	
	
	
	public String getImage_title() {
		return image_title;
	}
	public void setImage_title(String image_title) {
		this.image_title = image_title;
	}
	public String getEvent_image() {
		return event_image;
	}
	public void setEvent_image(String event_image) {
		this.event_image = event_image;
	}
	public int getFellowship_id() {
		return fellowship_id;
	}
	public void setFellowship_id(int fellowship_id) {
		this.fellowship_id = fellowship_id;
	}
	public String getFellowship_name() {
		return fellowship_name;
	}
	public void setFellowship_name(String fellowship_name) {
		this.fellowship_name = fellowship_name;
	}
	public int getEventId() {
		return eventId;
	}
	public int getEventTypeId() {
		return eventTypeId;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public String getEventSubtitle() {
		return eventSubtitle;
	}
	public String getEventVenue() {
		return eventVenue;
	}
	public String getEventMapLocation() {
		return eventMapLocation;
	}
	public String getEventDate() {
		return eventDate;
	}
	public String getEventTime() {
		return eventTime;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public String getStatus() {
		return status;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public String getCreatedTime() {
		return createdTime;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getPaid() {
		return paid;
	}
	public void setPaid(String paid) {
		this.paid = paid;
	}
	public float getRmbfbMember() {
		return rmbfbMember;
	}
	public void setRmbfbMember(float rmbfbMember) {
		this.rmbfbMember = rmbfbMember;
	}
	public float getRotarian() {
		return rotarian;
	}
	public void setRotarian(float rotarian) {
		this.rotarian = rotarian;
	}
	public float getOthers() {
		return others;
	}
	public void setOthers(float others) {
		this.others = others;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public void setEventTypeId(int eventTypeId) {
		this.eventTypeId = eventTypeId;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public void setEventSubtitle(String eventSubtitle) {
		this.eventSubtitle = eventSubtitle;
	}
	public void setEventVenue(String eventVenue) {
		this.eventVenue = eventVenue;
	}
	public void setEventMapLocation(String eventMapLocation) {
		this.eventMapLocation = eventMapLocation;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public void setEventTime(String eventTime) {
		this.eventTime = eventTime;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	

}
