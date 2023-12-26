package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shinhan.dto.EarnpointVO;
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

	public int PointinsertMember(MemVO mem) {
		// TODO Auto-generated method stub
		return dao.PointinsertMember(mem);
	}

	public int pointUpdate(MemVO codemem) {
		// TODO Auto-generated method stub
		return dao.pointUpdate(codemem);
	}

	public int insertEarn(EarnpointVO earn) {
		// TODO Auto-generated method stub
		return dao.insertEarn(earn);
	}

	public MemVO getCodeMem(String mem_code) {
		// TODO Auto-generated method stub
		return dao.getCodeMem(mem_code);
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
