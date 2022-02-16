package com.ui.model;

public class Attendance {
	
	
	private int attd_id;
	private int member_id;
	private int fellowship_id;
	private int present;
	private int absent;
	private int leave;
	private int subtitute;
	private String delay_time;
	
	
	public int getAttd_id() {
		return attd_id;
	}
	public void setAttd_id(int attd_id) {
		this.attd_id = attd_id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public int getFellowship_id() {
		return fellowship_id;
	}
	public void setFellowship_id(int fellowship_id) {
		this.fellowship_id = fellowship_id;
	}
	public int getPresent() {
		return present;
	}
	public void setPresent(int present) {
		this.present = present;
	}
	public int getAbsent() {
		return absent;
	}
	public void setAbsent(int absent) {
		this.absent = absent;
	}
	public int getLeave() {
		return leave;
	}
	public void setLeave(int leave) {
		this.leave = leave;
	}
	public int getSubtitute() {
		return subtitute;
	}
	public void setSubtitute(int subtitute) {
		this.subtitute = subtitute;
	}
	public String getDelay_time() {
		return delay_time;
	}
	public void setDelay_time(String delay_time) {
		this.delay_time = delay_time;
	}
	
	
	

}
