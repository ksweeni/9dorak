package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.shinhan.dto.SubdetailVO;
import com.shinhan.model.SubDetailService;

@Controller
@RequestMapping("sub")
public class SubDetailController {
	@Autowired
	SubDetailService subdetailService;

	private static final Logger logger = LoggerFactory.getLogger(SubDetailController.class);

	@GetMapping("subdetail.do")
	public String subdetail(Model model) {
		List<SubdetailVO> subdetaillist = subdetailService.selectAll();
		model.addAttribute("subdetaillist", subdetaillist);
		return "sub/subdetail";
	}
	
	@GetMapping("subdetail2.do")
	public String subdetail2(Model model) {
		List<SubdetailVO> subdetaillist = subdetailService.selectAll();
		model.addAttribute("subdetaillist", subdetaillist);
		return "sub/subdetail2";
	}
	
	@GetMapping("subdetail3.do")
	public String subdetail3(Model model) {
		List<SubdetailVO> subdetaillist = subdetailService.selectAll();
		model.addAttribute("subdetaillist", subdetaillist);
		return "sub/subdetail3";
	}
}
