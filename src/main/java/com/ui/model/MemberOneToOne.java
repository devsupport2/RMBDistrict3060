package com.ui.model;

public class MemberOneToOne {
	
	/*
	 * public MemberOneToOne(int oneToOneId, int metMemberId, String
	 * memberFirstName, String memberMiddleName, String memberLastName, int
	 * invitedByMemberId, String inviteeFirstName, String inviteeMiddleName, String
	 * inviteeLastName, String meetingDate, String location, String
	 * conversationTopic) { super(); this.oneToOneId = oneToOneId; this.metMemberId
	 * = metMemberId; this.memberFirstName = memberFirstName; this.memberMiddleName
	 * = memberMiddleName; this.memberLastName = memberLastName;
	 * this.invitedByMemberId = invitedByMemberId; this.inviteeFirstName =
	 * inviteeFirstName; this.inviteeMiddleName = inviteeMiddleName;
	 * this.inviteeLastName = inviteeLastName; this.meetingDate = meetingDate;
	 * this.location = location; this.conversationTopic = conversationTopic; }
	 * 
	 * public MemberOneToOne(int metMemberId, int invitedByMemberId, String
	 * meetingDate, String location, String conversationTopic, String status, int
	 * createdBy, String ipAddress) { super(); this.metMemberId = metMemberId;
	 * this.invitedByMemberId = invitedByMemberId; this.meetingDate = meetingDate;
	 * this.location = location; this.conversationTopic = conversationTopic;
	 * this.status = status; this.createdBy = createdBy; this.ipAddress = ipAddress;
	 * }
	 */

	private int oneToOneId;
	private int metMemberId;
	private int invitedByMemberId;
	private String meetingDate;
	private String location;
	private String conversationTopic;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;
	private String memberFirstName;
	private String memberMiddleName;
	private String memberLastName;
	private String inviteeFirstName;
	private String inviteeMiddleName;
	private String inviteeLastName;
	private int fellowship_id;
	private String fellowship_name;
	
	
	

	public int getFellowship_id() {
		return fellowship_id;
	}

	public String getFellowship_name() {
		return fellowship_name;
	}

	public void setFellowship_id(int fellowship_id) {
		this.fellowship_id = fellowship_id;
	}

	public void setFellowship_name(String fellowship_name) {
		this.fellowship_name = fellowship_name;
	}

	public int getOneToOneId() {
		return oneToOneId;
	}

	public int getMetMemberId() {
		return metMemberId;
	}

	public int getInvitedByMemberId() {
		return invitedByMemberId;
	}

	public String getMeetingDate() {
		return meetingDate;
	}

	public String getLocation() {
		return location;
	}

	public String getConversationTopic() {
		return conversationTopic;
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

	public String getIpAddress() {
		return ipAddress;
	}

	public String getMemberFirstName() {
		return memberFirstName;
	}

	public String getMemberMiddleName() {
		return memberMiddleName;
	}

	public String getMemberLastName() {
		return memberLastName;
	}

	public String getInviteeFirstName() {
		return inviteeFirstName;
	}

	public String getInviteeMiddleName() {
		return inviteeMiddleName;
	}

	public String getInviteeLastName() {
		return inviteeLastName;
	}

	public void setOneToOneId(int oneToOneId) {
		this.oneToOneId = oneToOneId;
	}

	public void setMetMemberId(int metMemberId) {
		this.metMemberId = metMemberId;
	}

	public void setInvitedByMemberId(int invitedByMemberId) {
		this.invitedByMemberId = invitedByMemberId;
	}

	public void setMeetingDate(String meetingDate) {
		this.meetingDate = meetingDate;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setConversationTopic(String conversationTopic) {
		this.conversationTopic = conversationTopic;
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

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public void setMemberFirstName(String memberFirstName) {
		this.memberFirstName = memberFirstName;
	}

	public void setMemberMiddleName(String memberMiddleName) {
		this.memberMiddleName = memberMiddleName;
	}

	public void setMemberLastName(String memberLastName) {
		this.memberLastName = memberLastName;
	}

	public void setInviteeFirstName(String inviteeFirstName) {
		this.inviteeFirstName = inviteeFirstName;
	}

	public void setInviteeMiddleName(String inviteeMiddleName) {
		this.inviteeMiddleName = inviteeMiddleName;
	}

	public void setInviteeLastName(String inviteeLastName) {
		this.inviteeLastName = inviteeLastName;
	}
	
}
