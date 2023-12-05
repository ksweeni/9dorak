package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.SubVO;
import com.shinhan.model.SubService;

@Controller
@RequestMapping("sub")
public class SubController {
	@Autowired
	SubService subService;

	private static final Logger logger = LoggerFactory.getLogger(SubController.class);

	@GetMapping("sub.do")
	public String sub(Model model) {
		List<SubVO> sublist = subService.selectAll();
		model.addAttribute("sublist", sublist);
		return "sub/sub";
	}
}
