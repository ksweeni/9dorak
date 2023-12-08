package com.shinhan.model;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.AnnoVO;

@Service
public class YomoService {

	@Autowired
	YomoDAOMybatis dao;
	
	public List<AnnoVO> selectAll() {
		return dao.selectAll();
	}

	public AnnoVO selectByno(int anno_no) {
		return dao.selectByno(anno_no);
	}

	public List<AnnoVO> searchYomo(String anno_title) {
		return dao.searchYomo(anno_title);
	}

}
