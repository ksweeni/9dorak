package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.ChallengeVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.YomoService;

@Controller
@RequestMapping("yomo")
public class YomoController {
	
	@Autowired
	YomoService yservice;

	private static final Logger logger = LoggerFactory.getLogger(YomoController.class);
	
	@GetMapping("notice.do")
	public String notice(Model model) {
		List<AnnoVO> ylist = yservice.selectAll();
		model.addAttribute("annolist", ylist);
		System.out.println(ylist);
		return "yomo/notice";
	}
	
	@GetMapping("noticeDetail.do")
	public String notice(Model model, AnnoVO anno) {
		AnnoVO annovo = yservice.selectByno(anno.getAnno_no());
		model.addAttribute("anno", annovo);
		return "yomo/noticeDetail";
	}
	
	@GetMapping("searchYomo.do")
	public String searchYomo(Model model, AnnoVO anno) {
		// @RequestParam("pro_aller") String pro_aller
		List<AnnoVO> ylist = yservice.searchYomo(anno.getAnno_title());
		/* System.out.println("searchAllergyCheck.do"); */
		model.addAttribute("ylist", ylist);
		return "yomo/yomo_search";
	}
	
	/*
	 * @GetMapping("getAnnoList")
	 * 
	 * @ResponseBody public List<AnnoVO> getAnnoList() { return
	 * yservice.selectAll(); }
	 */
}

