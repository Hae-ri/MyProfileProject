package com.javatest.MyProfile.dto;

public class QuestionListDto {

	// Q_LIST, Q_LIST_SEQ
	// 순번, 문의자 성명, 문의자 이름, 문의날짜, 답변여부, 문의내용, 답변내용 
	
	private int qnum; 
	private String qid;
	private String qname;
	private String qdate;
	private String qquestion;
	private String qanswer;
	private String qstatus;
	
	public QuestionListDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestionListDto(int qnum, String qid, String qname, String qdate, String qquestion, String qanswer,
			String qstatus) {
		super();
		this.qnum = qnum;
		this.qid = qid;
		this.qname = qname;
		this.qdate = qdate;
		this.qquestion = qquestion;
		this.qanswer = qanswer;
		this.qstatus = qstatus;
	}

	public int getQnum() {
		return qnum;
	}

	public void setQnum(int qnum) {
		this.qnum = qnum;
	}

	public String getQid() {
		return qid;
	}

	public void setQid(String qid) {
		this.qid = qid;
	}

	public String getQname() {
		return qname;
	}

	public void setQname(String qname) {
		this.qname = qname;
	}

	public String getQdate() {
		return qdate;
	}

	public void setQdate(String qdate) {
		this.qdate = qdate;
	}

	public String getQquestion() {
		return qquestion;
	}

	public void setQquestion(String qquestion) {
		this.qquestion = qquestion;
	}

	public String getQanswer() {
		return qanswer;
	}

	public void setQanswer(String qanswer) {
		this.qanswer = qanswer;
	}

	public String getQstatus() {
		return qstatus;
	}

	public void setQstatus(String qstatus) {
		this.qstatus = qstatus;
	}

		
	
}
