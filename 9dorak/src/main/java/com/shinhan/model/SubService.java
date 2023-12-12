package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.ProVO;
import com.shinhan.dto.SubVO;

@Service
public class SubService {

	@Autowired
	SubDAOMybatis dao;

	public List<SubVO> selectAll() {
		return dao.selectAll();
	}

	public List<ProVO> selectAllSub9A() {
		return dao.selectAllSub9A();
	}

	public List<ProVO> selectAllSub9B() {
		return dao.selectAllSub9B();
	}

	public List<ProVO> selectAllSub19A() {
		return dao.selectAllSub19A();
	}

	public List<ProVO> selectAllSub19B() {
		return dao.selectAllSub19B();
	}	
}
