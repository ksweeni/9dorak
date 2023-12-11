package com.shinhan.model;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.FaqVO;
import com.shinhan.dto.OneaskVO;
import com.shinhan.dto.ProVO;

@Service
public class YomoService {

	@Autowired
	YomoDAOMybatis dao;
	
	public List<AnnoVO> selectAll() {
		return dao.selectAll();
	}
	
	public List<FaqVO> selectFaqAll() {
		return dao.selectFaqAll();
	}

	public AnnoVO selectByno(int anno_no) {
		return dao.selectByno(anno_no);
	}

	public List<AnnoVO> searchYomo(String anno_title) {
		return dao.searchYomo(anno_title);
	}

	public List<AnnoVO> selectOrderbyView() {
		return dao.selectOrderbyView();
	}

	public List<AnnoVO> selectOrderbyNew() {
		return dao.selectOrderbyNew();
	}

	public List<OneaskVO> selectOneaskAll() {
		return dao.selectOneaskAll();
	}

	public List<OneaskVO> selectOrderbyNewOneask() {
		return dao.selectOrderbyNewOneask();
	}

	public List<OneaskVO> searchOneask(String oneask_title) {
		return dao.searchOneask(oneask_title);
	}

	public OneaskVO selectBynoOneask(int oneask_no) {
		return dao.selectBynoOneask(oneask_no);
	}

}
