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
import com.shinhan.dto.FaqVO;
import com.shinhan.dto.OneaskVO;
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
		return "yomo/notice_search";
	}
	
	@GetMapping("yomoOrderby.do")
	public String yomoOrderby(Model model, AnnoVO anno) {
		if(anno.getOrder_type().equals("조회수 순")) {
			/* System.out.println(anno.getOrder_type()); */
			List<AnnoVO> ylist = yservice.selectOrderbyView();
			model.addAttribute("ylist", ylist);
			//System.out.println(slist);
		}else if(anno.getOrder_type().equals("최근글 순")) {
			List<AnnoVO> ylist = yservice.selectOrderbyNew();
			model.addAttribute("ylist", ylist);
		}
		return "yomo/notice_search";
	}
	
	@GetMapping("faq.do")
	public String faq(Model model) {
		List<FaqVO> flist = yservice.selectFaqAll();
		model.addAttribute("flist", flist);
		return "yomo/faq";
	}
	
	@GetMapping("oneaskDetail.do")
	public String oneask(Model model, OneaskVO oneask) {
		OneaskVO oneaskvo = yservice.selectBynoOneask(oneask.getOneask_no());
		model.addAttribute("oneask", oneaskvo);
		return "yomo/oneaskDetail";
	}
	
	@GetMapping("oneask.do")
	public String oneask(Model model) {
		List<OneaskVO> olist = yservice.selectOneaskAll();
		model.addAttribute("olist", olist);
		return "yomo/oneask";
	}
	
	@GetMapping("searchOneask.do")
	public String searchOneask(Model model, OneaskVO oneask) {
		// @RequestParam("pro_aller") String pro_aller
		List<OneaskVO> olist = yservice.searchOneask(oneask.getOneask_title());
		model.addAttribute("olist", olist);
		return "yomo/oneask_search";
	}
	
	@GetMapping("oneaskOrderby.do")
	public String yomoOrderby(Model model, OneaskVO oneask) {
		if(oneask.getOrder_type().equals("최근글 순")) {
			List<OneaskVO> olist = yservice.selectOrderbyNewOneask();
			model.addAttribute("olist", olist);
			//System.out.println(olist);
		}
		return "yomo/oneask_search";
	}
	
	/*
	 * @GetMapping("getAnnoList")
	 * 
	 * @ResponseBody public List<AnnoVO> getAnnoList() { return
	 * yservice.selectAll(); }
	 */
}

