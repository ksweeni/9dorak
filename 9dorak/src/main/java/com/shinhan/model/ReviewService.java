package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.OrderdetailVO;
import com.shinhan.dto.ProVO;


@Service
public class ReviewService {

	@Autowired
	ReviewDAOMybatis dao;

//	public OrderdetailVO selectByOrderdetail(Map<String, Object> map) {
//		return dao.selectByOrderdetail(map);
//	}


}
