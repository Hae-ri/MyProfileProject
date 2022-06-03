package com.javatest.MyProfile.dao;

import java.util.ArrayList;

import org.springframework.transaction.annotation.Transactional;

import com.javatest.MyProfile.dto.MemberDto;
import com.javatest.MyProfile.dto.QuestionListDto;
import com.javatest.MyProfile.dto.ReservationListDto;


public interface IDao {

	
	// R_LIST(예약내역) 조작 dao
	public ArrayList<ReservationListDto> listDao(String rid); // 본인의 전체 예약리스트 가져오기
	public ArrayList<ReservationListDto> list01Dao(String rid); // 접종 예약리스트 가져오기
	public ArrayList<ReservationListDto> list02Dao(String rid); // 진료 예약리스트 가져오기
	public ArrayList<ReservationListDto> list03Dao(String rid); // 미용 예약리스트 가져오기
	public void writeDao(String rid, String rname, String rclass, String rdayof, String rcontent, String rstatus); // 예약하기
	public ReservationListDto viewDao(String rnum); // 예약 내용 보기
	public void rcancleDao(String rstatus, String rnum); // 예약 취소
	public int countList(String rid); // 예약 건수
	public int count01List(String rid); // 접종 예약 건수
	public int count02List(String rid); // 진료 예약 건수
	public int count03List(String rid); // 미용 예약 건수
	public void deleteAllDao(String rid); // 해당 아이디의 예약 전체 삭제

	// Q_LIST(문의내역) 조작 dao
	public ArrayList<QuestionListDto> qlistDao(String qid); // 본인의 전체 문의리스트 가져오기
	public void qwriteDao(String qid, String qname, String qquestion, String qstatus); // 문의하기
	public QuestionListDto qviewDao(String qnum); // 문의 내용 보기
	public void qcancleDao(String qstatus, String qnum); // 문의 취소
	public int qcountList(String qid); // 문의 건수
	public void qdeleteAllDao(String qid); // 해당 아이디의 문의 전체 삭제
	
	
	// 관리자(admin/전부)
	public ArrayList<ReservationListDto> AlllistDao(); //전체 예약리스트 가져오기
	public ArrayList<ReservationListDto> Alllist01Dao(); // 접종 예약리스트 가져오기
	public ArrayList<ReservationListDto> Alllist02Dao(); // 진료 예약리스트 가져오기
	public ArrayList<ReservationListDto> Alllist03Dao(); // 미용 예약리스트 가져오기
	public int AllcountList(); // 전체 예약 건수
	public int Allcount01List(); // 접종 예약 건수
	public int Allcount02List(); // 진료 예약 건수
	public int Allcount03List(); // 미용 예약 건수
	public void visitOkDao(String rstatus, String rnum); // 방문완료
	
	public ArrayList<QuestionListDto> qAlllistDao(); // 전체 문의리스트 가져오기
	public void qreplyDao(String qanswer, String qstatus, String qnum); // 답변쓰기
	public QuestionListDto qadminviewDao(); // 문의 내용 보기
	public int qAllcountList(); // 문의 건수
	
	// M_MEMBER(회원)
	public void joinDao(String mid, String mpw, String mnamem, String mphone); // 회원 가입
	public MemberDto loginOkDao(String mid); // 로그인 성공 여부 체크
	public int checkIdDao(String mid); // 아이디 존재 여부 체크(존재하면 1, 존재하지 않으면 0) 
	public int checkPwDao(String mid, String mpw); // 아이디와 비밀번호 일치여부 체크(일치 1, 불일치 2)
	public void InfoModifyOkDao(String mpw, String mname, String mphone, String mid); // 회원 정보 수정
	public int cancleDao(String mid, String mpw); // 회원탈퇴

}