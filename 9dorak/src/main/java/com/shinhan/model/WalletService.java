package com.shinhan.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.MemVO;
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
	
	
	
	
	
	
	
	
	public int deleteBasket(String mem_id, int pro_no) {
		return dao.deleteBasket(mem_id, pro_no);
	}
	
	public int modifyCount(BasketVO basket) {
		return dao.modifyCount(basket);
	}
	
	public List<BasketVO> getBasket(String mem_id) {
		return dao.getBasket(mem_id);
	}
	
	
	
	
	
	public String getProImage(int pro_no) {
		return dao.getProImage(pro_no);
	}
	
	
	public MemVO checkMember(String mem_id) {
		return dao.checkMember(mem_id);
	}
	
	public List<BasketVO> checkBasket(String mem_id, int pro_no) {
		return dao.checkBasket(mem_id, pro_no);
	}
	
	public int addBasket(BasketVO basket) {
		return dao.addBasket(basket);
	}
	
	public List<BasketVO> emptyBasket(String mem_id) {
		return dao.emptyBasket(mem_id);
	}
}
