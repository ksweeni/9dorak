package com.shinhan.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.model.ReviewService;


@Controller
@RequestMapping("review")
public class ReviewController {

	@Autowired
	ReviewService rService;

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	//리뷰
	@GetMapping("reviewUpload.do")
	public String review(Model model) {
		return "review/reviewUpload";
	}
	
	
	
}
