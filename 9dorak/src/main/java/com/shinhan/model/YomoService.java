package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.AnnoVO;

@Service
public class YomoService {

	@Autowired
	YomoDAOMybatis dao;
	
	public List<AnnoVO> selectAll() {
		return dao.selectAll();
	}
}
