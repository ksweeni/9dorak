package com.shinhan.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.DoranVO;

import com.shinhan.model.DoranService;


@Controller
@RequestMapping("doran")
public class DoranController {

	@Autowired
	DoranService dService;

	private static final Logger logger = LoggerFactory.getLogger(DoranController.class);

	@GetMapping("doran.do")
	public String doran(Model model) {
		List<DoranVO> dlist = dService.selectAll();
		model.addAttribute("dlist", dlist);
		return "doran/doran";
	}
}
