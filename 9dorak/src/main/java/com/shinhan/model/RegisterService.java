package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shinhan.dto.MemVO;

@Service
public class RegisterService {

	@Autowired
	RegisterDAOMybatis dao;

	public List<MemVO> selectAll() {
		return dao.selectAll();
	}

	public int idCheck(String mem_id) {
		// TODO Auto-generated method stub
		return dao.idCheck(mem_id);
	}
	
	public int codeCheck(String mem_code) {
		// TODO Auto-generated method stub
		return dao.codeChcek(mem_code);
	}
	
	public int insertMember(MemVO mem) {
		// TODO Auto-generated method stub
		return dao.inserMember(mem);
		
	}

	
//
//	@Transactional // ��� �����ϰų� ��� �����ϰų�
//	public MemVO updateTransViewCount(int bno) {
//		MemVO board = dao.selectById(bno);
//		dao.updateViewCount(bno);
//		return board;
//	}
//
//	public int insert(BoardVO board) {
//		System.out.println(board+ "service");
//		return dao.insert(board);
//	}
//
//	public int update(BoardVO board) {
//		return dao.update(board);
//	}
//
//	public int delete(int bno) {
//		return dao.delete(bno);
//	}




}
