package com.javatest.MyProfile.dto;

import java.sql.Date;

public class MemberDto {
	
	// m_member
	// 아이디, 이름, 전화번호, 비밀번호, 가입날짜
	private String mid;
	private String mname;
	private String mphone;
	private String mpw;
	private String mdate;
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDto(String mid, String mname, String mphone, String mpw, String mdate) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.mphone = mphone;
		this.mpw = mpw;
		this.mdate = mdate;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	
	
	
}
