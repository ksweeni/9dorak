package com.shinhan.dto;

import java.sql.Date;

public class PayVO {
	int order_no; // 주문 고유 번호
	String pay_status; // 결제 상태
	Date pay_date; // 결제 날짜
	String pay_method; // 결제 방법
	int pay_price; // 결제 금액
	String pay_depo; // 입금자명
	int pay_depoprice; // 입금액
	String pay_depobank; // 입금은행
}
