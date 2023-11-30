package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.ChallengeVO;
import com.shinhan.model.ChallengeService;

@Controller
@RequestMapping("challenge")
public class ChallengeController {
	@Autowired
	ChallengeService chService;

	private static final Logger logger = LoggerFactory.getLogger(ChallengeController.class);

	@GetMapping("challenge.do")
	public String event(Model model) {
		List<ChallengeVO> chlist = chService.selectAll();
		model.addAttribute("chlist", chlist);
		return "challenge/challenge";
	}
}
