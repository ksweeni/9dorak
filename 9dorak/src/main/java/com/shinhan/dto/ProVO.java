package com.shinhan.dto;

import java.sql.Date;

public class ProVO {
	int pro_no; //상품 고유 번호
	String pro_name; //상품 이름
	int pro_price; //상품 가격
	int pro_like; //상품 좋아요 수
	String pro_nut; //상품 영양소
	int pro_sub; //상품 구독 수
	Date pro_ed; //상품 유통기한
	int pro_sc; //상품 재고 수
	int pro_view; // 상품 조회수
	Date pro_rd; //상품 등록 날짜
	String pro_delete; //상품 상품 삭제 여부 여부
	String pro_aller; //상품알레르기
	int pro_prot; //단백질
	int pro_carb; //탄수화물
	int pro_prov; //지방
	int pro_nat; //나트륨
	int pro_sugar; //당류
	int pro_cal; //칼로리
	int pro_weight; // 중랴량
}
