package com.shinhan.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.OrderVO;

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

	public List<OrderVO> selectByOrder(int order_no) {
		return dao.selectByOrder(order_no);
	}

	public int updateOrder(OrderVO order) {
		return dao.updateOrder(order);
	}

}
