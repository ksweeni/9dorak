package com.shinhan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.model.YomoService;

@Controller
@RequestMapping("yomo")
public class YomoController {
	
	@Autowired
	YomoService yservice;

	private static final Logger logger = LoggerFactory.getLogger(YomoController.class);
	
	@GetMapping("notice.do")
	public String notice() {
		return "yomo/notice";
	}

}
