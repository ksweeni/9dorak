package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.SubDetailVO;

@Service
public class SubDetailService {

	@Autowired
	SubDetailDAOMybatis dao;

	public List<SubDetailVO> selectAll() {
		return dao.selectAll();
	}	
}
