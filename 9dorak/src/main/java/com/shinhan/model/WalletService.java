package com.shinhan.model;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
import com.shinhan.dto.PayVO;
import com.shinhan.dto.PeopleVO;

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
	
	public PayVO selectPay(int order_no) {
		return dao.selectPay(order_no);
	}
	
	public List<BasketVO> getBasket(String mem_id) {
		return dao.getBasket(mem_id);
	}
	
	public int deleteBasket(BasketVO basket) {
		return dao.deleteBasket(basket);
	}
	
	public List<Map<String, Object>> allPeopleBasket(String mem_id) {
		return dao.allPeopleBasket(mem_id);
	}
	
	public List<PeopleVO> peopleCheck(String mem_id) {
    	return dao.peopleCheck(mem_id);
    }
    
    public List<Map<String, Object>> peopleBasket(String mem_id) {
    	return dao.peopleBasket(mem_id);
    }
    
    public List<Map<String, Object>> noPeopleBasket(String mem_id) {
    	return dao.noPeopleBasket(mem_id);
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

	public int updateBasket(BasketVO basket) {
		return dao.updateBasket(basket);
	}

	public List<OrderVO> getOrderList(int order_no) {
		return dao.getOrderList(order_no);
	}

	public int insertOrder(OrderVO order) {
		return dao.insertOrder(order);
	}

	public int selectOrderNum() {
		return dao.selectOrderNum();
	}

	public int insertOrderDetail(OrderdetailVO orderDetail) {
		return dao.insertOrderDetail(orderDetail);
	}

	public int updateSales(PayVO pay) {
		return dao.updateSales(pay);
	}

	public int deleteSales(int order_no) {
		return dao.deleteSales(order_no);
	}

	public int deleteBasketPay(String mem_id, int pro_no) {
		return dao.deleteBasketPay(mem_id, pro_no);
	}
}
