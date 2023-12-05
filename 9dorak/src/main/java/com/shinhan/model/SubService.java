package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.SubVO;

@Service
public class SubService {

	@Autowired
	SubDAOMybatis dao;

	public List<SubVO> selectAll() {
		return dao.selectAll();
	}	
}
