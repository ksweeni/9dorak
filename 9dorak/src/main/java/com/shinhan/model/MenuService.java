package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.ProVO;


@Service
public class MenuService {

	@Autowired
	MenuDAOMybatis dao;

	public List<ProVO> selectAll() {
		return dao.selectAll();
	}
	
	public List<ProVO> selectSearchPro(ProVO pro) {
		return dao.selectSearchPro(pro);
	}

	public List<ProVO> selectOrderbyNew() {
		return dao.selectOrderbyNew();
	}

	public List<ProVO> selectOrderbyLike() {
		return dao.selectOrderbyLike();
	}

	public List<ProVO> searchAllergyCheck(String aller_type) {
		return dao.searchAllergyCheck(aller_type);
	}

//	public int insertMember(DoranVO doran) {
//		return dao.insertDoran(doran);
//	}

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
