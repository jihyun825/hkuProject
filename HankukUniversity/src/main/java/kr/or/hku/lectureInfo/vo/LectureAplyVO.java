package kr.or.hku.lectureInfo.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class LectureAplyVO {
	private String lecapNo; // 과목신청번호
	private String subNo; // 과목코드
	private String proNo; //교번
	private String flctsNo; // 시설물번혼
	private String lecapYr; //개설년도
	private int lecapTgGrade; //대상학년
	private String lecapDt; // 신청일
	private String lecapCpct; //수강정원
	private int lecapSem; // 개설학기
	private String aprvSttsCd; //결재상태코드
	private String lecapRjctRsn; //반려사유
	private String avlCd; //가용코드
	
	// lecture_aply 테이블 이외에  join해서 가져올 필요한 필드
	private String subNm; //과목이름
	private String comCdNm; //이수구분이름
	private String proNm; //교수이름
	private String lecscDay; //강의요일
	private int periodCd; //시작교시
	private int lecscHour; // 시수
	private String deptNm; //학과이름
	private String subCrd; //학점
	private int remainder; //잔여정원
	private String flctsNm; //시설물이름
 	private String flctNm;	//시설이름 
	
//	private List<LectureScheduleVO> scheduleList;
}
