package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.PayVO;

@Service
public class WalletService {

	@Autowired
	WalletDAOMybatis dao;
	
	public int addBasket(BasketVO basket) {
		return dao.addBasket(basket);
	}
	
	public int deleteBasket(Map<String, Object> parameters) {
		return dao.deleteBasket(parameters);
	}
	
	public int modifyCount(BasketVO basket) {
		return dao.modifyCount(basket);
	}
	
	public List<BasketVO> getBasket(String mem_id) {
		return dao.getBasket(mem_id);
	}
	
	public List<BasketVO> checkBasket(String mem_id) {
		return dao.checkBasket(mem_id);
	}
	
//	public int insertPro(BasketVO basket) {
//		return dao.insertPro(basket);
//	}

	public List<BasketVO> selectAllBasket() {
		return dao.selectAllBasket();
	}
	
	public List<PayVO> selectAllPay() {
		return dao.selectAllPay();
	}
}
