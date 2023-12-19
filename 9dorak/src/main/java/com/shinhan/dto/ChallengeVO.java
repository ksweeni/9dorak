package com.shinhan.dto;

import java.sql.Date;
import org.springframework.web.multipart.MultipartFile;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class ChallengeVO {
	private int  challenge_no; //챌린지 고유 번호
	private String challenge_name ;// 챌린지명
	private String challenge_cont ; // 챌린지 내용
	private String  challenge_image; //챌린지 사진
	private Date  challenge_date; //챌린지 작성 날짜
	private Date  challenge_start; //챌린지 시작 날짜
	private Date  challenge_end; //챌린지 종료 날짜
	private String  challenge_category;//챌린지 구분
	private String  challenge_recipe;//챌린지 레시피
	private String  mem_id; //회원 아이디
	private int challengelike_cnt;
	private String order_type;
	


	 

	
	private int currentPage;
	public void setStartIndex(int startIndex) {
		// TODO Auto-generated method stub
		
	}
	public void setCntPerPage(int displayRow) {
		// TODO Auto-generated method stub
		
	}
	
	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage =(currentPage-1)*10;
	}

}
