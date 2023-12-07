package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shinhan.dto.CommentVO;
import com.shinhan.dto.DCommentVO;
import com.shinhan.dto.DlikeVO;
import com.shinhan.dto.DoranVO;


@Service
public class DoranService {

	@Autowired
	DoranDAOMybatis dao;

	public List<DoranVO> selectAll() {
		return dao.selectAll();
	}
	
	public List<DoranVO> selectAllByView(){
		return dao.selectAllByView();
	}
	
	public List<DoranVO> selectAllByDlike(){
		return dao.selectAllByDlike();
	}
	
	public int insertDoran(DoranVO doran) {
		return dao.insertDoran(doran);
	}

	public List<DlikeVO> selectLike() {
		return dao.selectLike();
	}
	
	public List<DCommentVO> selectComment(){
		return dao.selectComment();
	}
	
	public List<CommentVO> selectAllCommentAbout(int doranNo) {
        return dao.selectAllCommentAbout(doranNo);
    }


	public List<DoranVO> selectAllForMe(String memId) {
		return dao.selectAllForMe(memId);
	}

	public List<DoranVO> selectAllByViewForMe(String memId) {
		return dao.selectAllByViewForMe(memId);
	}

	public List<DoranVO> selectAllByDlikeForMe(String memId) {
		return dao.selectAllByDlikeForMe(memId);
	}

	public DoranVO selectDoran_no(int doran_no) {
		// TODO Auto-generated method stub
		return dao.selectDoran_no(doran_no);
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
