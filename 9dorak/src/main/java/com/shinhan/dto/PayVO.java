package com.shinhan.dto;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class PayVO {
	private int order_no; // 주문고유번호
	private String pay_status; // 결제상태
	private Date pay_date; // 결제날짜
	private String pay_method; // 결제방법
	private int pay_price; // 결제금액
	private String pay_depo; // 입금자명
	private int pay_depoprice; // 입금액
	private String pay_depobank; // 입금은행
	private String imp_uid; // 영수증 
}
