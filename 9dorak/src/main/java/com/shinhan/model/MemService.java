package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.MemVO;
import com.shinhan.dto.MemreviewVO;
import com.shinhan.dto.ProVO;


@Service
public class MemService {

	@Autowired
	MemDAOMybatis dao;

	public List<MemVO> selectAll() {
		return dao.selectAll();
	}

	public MemVO selectByid(String mem_id) {
		return dao.selectByid(mem_id);
	}

	public int updateMem(MemVO mem) {
		return dao.updateMem(mem);
	}

	public int deleteMem(String mem_id) {
		return dao.deleteMem(mem_id);
	}

	public int insertMem(MemVO mem) {
		return dao.insertMem(mem);
	}

}
