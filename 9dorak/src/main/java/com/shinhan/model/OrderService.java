package com.shinhan.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;

@Service
public class OrderService {

	@Autowired
	OrderDAOMybatis dao;

	public List<OrderVO> selectAll() {
		return dao.selectAll();
	}

	public List<OrderVO> searchadminOrder(String mem_id) {
		return dao.searchadminOrder(mem_id);
	}
	
	public List<OrderVO> selectByOrderDetail(int order_no) {
		return dao.selectByOrderDetail(order_no);
	}

	public int deleteOrder(int order_no) {
		return dao.deleteOrder(order_no);
	}
	
	public OrderVO orderIDCheck(int order_no) {
		return dao.orderIDCheck(order_no);
	}
	
	public List<OrderdetailVO> orderProNoCheck(int order_no) {
		return dao.orderProNoCheck(order_no);
	}

	public List<OrderVO> selectByOrder(int order_no) {
		return dao.selectByOrder(order_no);
	}

	public int updateOrder(OrderVO order) {
		return dao.updateOrder(order);
	}
	
	public List<OrderVO> selectMostList() {
		// TODO Auto-generated method stub
		return dao.selectMostList();
	}


}
