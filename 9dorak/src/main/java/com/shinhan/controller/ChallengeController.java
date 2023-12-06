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
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.ChallengeVO;
import com.shinhan.model.ChallengeService;

@Controller
@RequestMapping("event")
public class ChallengeController {
	@Autowired
	ChallengeService chService;

	private static final Logger logger = LoggerFactory.getLogger(ChallengeController.class);

	@GetMapping("challenge.do")
	public String challenge(Model model) {
		List<ChallengeVO> chlist = chService.selectAll();
//		System.out.println(chlist);
		model.addAttribute("chlist", chlist);
		return "event/challenge";
	}

	@GetMapping("challenge2.do")
	public String challenge2(Model model, ChallengeVO challenge) {
//		System.out.println("challenge2.do");
//		System.out.println(challenge.getChallenge_no());
		ChallengeVO chall = chService.selectByno(challenge.getChallenge_no());
		int likeCnt = chService.getLike(challenge.getChallenge_no());

//		System.out.println(likeCnt);
//		System.out.println(chall);
		model.addAttribute("chall", chall);
		model.addAttribute("likeCnt", likeCnt);
		return "event/challenge2";
	}

	@RequestMapping(value = "challengeupdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String challengeupdate(Model model, ChallengeVO challenge) {
//		System.out.println(challenge);
		int result = chService.updateChall(challenge);
//		System.out.println("challengeupdate.do");
		if (result > 0) {
			return "수정 성공";
		} else {
			return "수정 실패";
		}
	}

	@GetMapping("insertChal.do")
	public String insertChalPage(Model model) {
//		System.out.println("insertChalPage");

		return "event/challengeInsert";
	}

	@PostMapping("insertChal.do")
	public String insertChal(Model model, ChallengeVO challenge) {
//		System.out.println("insertChalpost");
		String mem_id = "aaa";
		// 나중에 이거 세션에 값 가져와서 넣자
		challenge.setMem_id(mem_id);
		int result = chService.insertChal(challenge);
		List<ChallengeVO> chlist = chService.selectAll();
		model.addAttribute("chlist", chlist);
		return "event/challenge";
	}
}
