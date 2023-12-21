package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.ProVO;


@Service
public class ReviewService {

	@Autowired
	ReviewDAOMybatis dao;

	public List<ProVO> selectAll() {
		return dao.selectAll();
	}


}
