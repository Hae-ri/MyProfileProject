package com.javatest.MyProfile.dto;

public class ReservationListDto {

	// R_LIST, R_LIST_SEQ // 회원
	// 순번, 예약자 성명, 예약 종류, 요청사항, 예약을 한 날짜, 예약날짜, 진료여부 
	
	private int rnum; 
	private String rid;
	private String rname;
	private String rdate;
	private String rdayof;
	private String rclass;
	private String rcontent;
	private String rstatus;
	
	public ReservationListDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReservationListDto(int rnum, String rid, String rname, String rdate, String rdayof, String rclass,
			String rcontent, String rstatus) {
		super();
		this.rnum = rnum;
		this.rid = rid;
		this.rname = rname;
		this.rdate = rdate;
		this.rdayof = rdayof;
		this.rclass = rclass;
		this.rcontent = rcontent;
		this.rstatus = rstatus;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRdayof() {
		return rdayof;
	}

	public void setRdayof(String rdayof) {
		this.rdayof = rdayof;
	}

	public String getRclass() {
		return rclass;
	}

	public void setRclass(String rclass) {
		this.rclass = rclass;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRstatus() {
		return rstatus;
	}

	public void setRstatus(String rstatus) {
		this.rstatus = rstatus;
	}
	
		
	
}
