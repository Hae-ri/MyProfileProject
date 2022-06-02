package com.javatest.MyProfile.dao;

import java.util.ArrayList;

import org.springframework.transaction.annotation.Transactional;

import com.javatest.MyProfile.dto.MemberDto;
import com.javatest.MyProfile.dto.ReservationListDto;


public interface IDao {

	
	// Member_R_LIST(회원 예약내역) 조작 dao
	public ArrayList<ReservationListDto> listDao(String rid); //전체 예약리스트 가져오기
	public ArrayList<ReservationListDto> list01Dao(String rid); // 접종 예약리스트 가져오기
	public ArrayList<ReservationListDto> list02Dao(String rid); // 진료 예약리스트 가져오기
	public ArrayList<ReservationListDto> list03Dao(String rid); // 미용 예약리스트 가져오기
	public void writeDao(String rid, String rname, String rclass, String rdayof, String rcontent, String rstatus); // 예약하기
	public ReservationListDto viewDao(String rnum); // 예약 내용 보기
	public void deleteDao(String rnum); // 예약 삭제, 예약 수정 불가능 삭제 후 재예약
	public int countList(String rid); 
	public int count01List(String rid); 
	public int count02List(String rid); 
	public int count03List(String rid); 

	// M_MEMBER(회원)
	public void joinDao(String mid, String mpw, String mnamem, String mphone); // 회원 가입
	public MemberDto loginOkDao(String mid); // 로그인 성공 여부 체크
	public int checkIdDao(String mid); // 아이디 존재 여부 체크(존재하면 1, 존재하지 않으면 0) 
	public int checkPwDao(String mid, String mpw); // 아이디와 비밀번호 일치여부 체크(일치 1, 불일치 2)
	public void InfoModifyOkDao(String mpw, String mname, String mphone, String mid); // 회원 정보 수정
	public int cancleDao(String mid, String mpw); // 회원탈퇴

}