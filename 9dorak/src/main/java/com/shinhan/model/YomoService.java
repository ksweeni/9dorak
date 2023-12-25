package com.shinhan.model;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.ChallengeVO;
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

	public int insertOneask(OneaskVO oneask) {
		return dao.insertOneask(oneask);
	}

	public int updateOneask(OneaskVO oneask) {
		return dao.updateOneask(oneask);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int adminNoticeUpdate(AnnoVO anno) {

		return dao.adminNoticeUpdate(anno);
	}

	public int adminNoticeDelete(int anno_no) {
		// TODO Auto-generated method stub
		return dao.adminNoticeDelete(anno_no);
	}

	
	  public int adminNoticeInsert(AnnoVO anno) { // TODO Auto-generated method
	  return dao.adminNoticeInsert(anno); 
	  }

	public List<Map<String, Object>> list(AnnoVO annoVO) {
		// TODO Auto-generated method stub
		return dao.list(annoVO);
	}

	public FaqVO selectFaq_no(int faq_no) {
		// TODO Auto-generated method stub
		return dao.selectFaq_no(faq_no);
	}

	public int adminnoticeFaqUpdate(FaqVO faq) {
		// TODO Auto-generated method stub
		return dao.adminnoticeFaqUpdate(faq);
	}

	public int adminnoticeFaqDelete(int faq_no) {
		// TODO Auto-generated method stub
		return dao.adminnoticeFaqDelete(faq_no);
	}

	public int adminNoticeFaqInsert(FaqVO faq) {
		// TODO Auto-generated method stub
		return dao.adminNoticeFaqInsert(faq);
	}

	public List<Map<String, Object>> list2(FaqVO faqVO) {
		// TODO Auto-generated method stub
		return dao.list2(faqVO);
	}
	 



}
