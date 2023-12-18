package com.shinhan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.ChallengeVO;
import com.shinhan.dto.ChalllikeVO;
import com.shinhan.dto.EventVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.ChallengeService;
import com.shinhan.model.EventService;

@Controller
@RequestMapping("event")
public class EventController {
	@Autowired
	EventService eService;
	@Autowired
	ChallengeService chService;

	private static final Logger logger = LoggerFactory.getLogger(EventController.class);

	@GetMapping("freelunchbox.do") public String event1(Model model, ProVO pro) {
		List<ProVO> freelist = eService.selectFreeAll();
		model.addAttribute("freelist", freelist);
		return "event/freelunchbox";
	 }
	
	@GetMapping("makelunchbox.do")
	public String makelunchbox(Model model, HttpSession session, ChallengeVO challenge) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		List<ChallengeVO> clist = chService.selectByMakeAll();
		List<ChallengeVO> clisttop3 = chService.selectByMakeAllTop3();
		List<ChallengeVO> clistlike = chService.selectByMakeAlllike();
		List<ChalllikeVO> clistmylike = chService.selectByMakemylike(loginmem.getMem_id());
		model.addAttribute("clist", clist);
		model.addAttribute("clisttop3", clisttop3);
		model.addAttribute("clistlike", clistlike);
		model.addAttribute("loginmem", loginmem);
		model.addAttribute("clistmylike", clistmylike);
		System.out.println(clist);
		return "event/makelunchbox";
	}
	
	@GetMapping("lunchboxdetail.do")
	public String lunchboxdetail(Model model, ChallengeVO challenge, HttpSession session) {
		ChallengeVO chall = chService.selectByno(challenge.getChallenge_no());
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		int likeCnt = chService.getLike(challenge.getChallenge_no());
		ChalllikeVO challlike = new ChalllikeVO(loginmem.getMem_id(), challenge.getChallenge_no());
		int likeCheck = chService.getLikecheck(challlike);
		model.addAttribute("chall", chall);
		model.addAttribute("likeCnt", likeCnt);
		model.addAttribute("mem", loginmem);
		model.addAttribute("likeCheck", likeCheck);
		System.out.println(chall);
		System.out.println(loginmem);
		return "event/lunchboxdetail";
	}
	
	@GetMapping("friendreco.do")
	public String friendreco(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "event/friendreco";
	}
	
	@GetMapping("friendadd.do")
	public String friendadd(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "event/friendadd";
	}
}
