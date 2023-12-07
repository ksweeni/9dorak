package com.shinhan.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.PayVO;

@Service
public class WalletService {

	@Autowired
	WalletDAOMybatis dao;

	public List<BasketVO> selectAllBasket() {
		return dao.selectAllBasket();
	}
	
	public List<PayVO> selectAllPay() {
		return dao.selectAllPay();
	}
}
