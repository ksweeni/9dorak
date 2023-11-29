package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.EventVO;

@Service
public class EventService {

	@Autowired
	EventDAOMybatis dao;

	public List<EventVO> selectAll() {
		return dao.selectAll();
	}	
}
