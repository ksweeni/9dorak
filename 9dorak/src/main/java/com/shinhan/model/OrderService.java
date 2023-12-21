package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.MemVO;
import com.shinhan.dto.MemreviewVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.ProVO;


@Service
public class OrderService {

	@Autowired
	OrderDAOMybatis dao;

	public List<OrderVO> selectAll() {
		return dao.selectAll();
	}

}
