package com.shinhan.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.PayVO;

@Service
public class PayService {

	@Autowired
	PayDAOMybatis dao;
	
	 public int insertPay(PayVO pay) {
		 return dao.insertPay(pay);
	 }
	 
	 public int selectPayCount() {
		 return dao.selectPayCount();
	 }

}
