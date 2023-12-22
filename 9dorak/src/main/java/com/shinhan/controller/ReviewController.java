package com.shinhan.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
import com.shinhan.model.MyPageService;
import com.shinhan.model.ReviewService;


@Controller
@RequestMapping("review")
public class ReviewController {

	@Autowired
	ReviewService rService;

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	//리뷰
	@GetMapping("reviewUpload.do")
	public String review(Model model, HttpSession session, OrderdetailVO order) {
//		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
//		Map<String, Object> inputMap = new HashMap<String, Object>();
//        inputMap.put("pro_no", order.getPro_no());
//        inputMap.put("mem_id", loginmem.getMem_id());
//        System.out.println(inputMap);
//        
//		model.addAttribute("orderdetail", rService.selectByOrderdetail(inputMap));
		
		return "review/reviewUpload";
	}
	
	
	
}
