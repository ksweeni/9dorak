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

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.ChallengeVO;
import com.shinhan.dto.CouponVO;
import com.shinhan.dto.FaqVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.ProVO;
import com.shinhan.dto.SubVO;
import com.shinhan.model.ChallengeService;
import com.shinhan.model.CouponService;
import com.shinhan.model.MemService;
import com.shinhan.model.MenuService;
import com.shinhan.model.OrderService;
import com.shinhan.model.SubService;
import com.shinhan.model.YomoService;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	MenuService mService;
	@Autowired
	MemService memService;
	@Autowired
	OrderService orderService;
	@Autowired
	SubService subService;
	@Autowired
	ChallengeService chService;
	@Autowired
	CouponService couponService;
	@Autowired
	YomoService yservice;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@GetMapping("adminMenu.do")
	public String adminMenu(Model model) {
		List<ProVO> mlist = mService.selectAll();
		model.addAttribute("mlist", mlist);
		return "admin/adminMenu";
	}

	@PostMapping("adminMenu.do")
	public String adminMenuDetail(Model model, ProVO menu) {
		ProVO detailmenu = mService.selectByNo(menu.getPro_no());
		model.addAttribute("detailmenu", detailmenu);
		System.out.println(detailmenu);
		return "admin/adminMenuDetail";
	}
	
	@GetMapping("adminMember.do")
	public String adminMember(Model model) {
		List<MemVO> memlist = memService.selectAll();
		model.addAttribute("memlist", memlist);
		return "admin/adminMember";
	}
	
	@GetMapping("adminOrder.do")
	public String adminOrder(Model model) {
		List<OrderVO> orderlist = orderService.selectAll();
		model.addAttribute("orderlist", orderlist);
		return "admin/adminOrder";
	}
	
	@GetMapping("adminSub.do")
	public String adminSub(Model model) {
		List<SubVO> sublist = subService.selectAll();
		model.addAttribute("sublist", sublist);
		return "admin/adminSub";
	}
	
	@GetMapping("adminNotice.do")
	public String adminNotice(Model model) {
		List<AnnoVO> ylist = yservice.selectAll();
		List<FaqVO> flist = yservice.selectFaqAll();
		model.addAttribute("ylist", ylist);
		model.addAttribute("flist", flist);
		return "admin/adminNotice";
	}
	
	@GetMapping("adminEvent.do")
	public String adminEvent(Model model) {
		List<ChallengeVO> chlist = chService.selectAll();
		model.addAttribute("chlist", chlist);
		return "admin/adminEvent";
	}
	
	@GetMapping("adminPoint.do")
	public String adminPoint(Model model) {
		List<CouponVO> clist = couponService.selectAll();
		model.addAttribute("clist", clist);
		return "admin/adminPoint";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("adminCouponCreate.do")
	public String adminCouponCreate(Model model) {
		List<MemVO> memlist = memService.selectAll();
		model.addAttribute("memlist", memlist);
		return "admin/adminCouponCreate";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("adminNoticeDetail.do")
	public String adminNoticeDetail(Model model, AnnoVO anno) {
		anno = yservice.selectByno(anno.getAnno_no());
		model.addAttribute("anno", anno);
		return "admin/adminNoticeDetail";
	}

	@RequestMapping(value = "adminNoticeUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminNoticeUpdate(Model model, AnnoVO anno) {
		int result = yservice.adminNoticeUpdate(anno);
		if (result > 0) {
			return "수정 성공";
		} else {
			return "수정 실패";

		}
	}
	@RequestMapping(value = "adminNoticeDelete.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminNoticeDelete(Model model, AnnoVO anno) {
		int result = yservice.adminNoticeDelete(anno.getAnno_no());
		if (result > 0) {
			return "삭제 성공";
		} else {
			return "삭제 실패";
			
		}
	}
	
	
	@GetMapping("adminNoticeInsert.do")
	public String adminNoticeInsert() {
		
		return "admin/adminNoticeInsert";
	}
	
	
	/*
	 * @RequestMapping(value = "adminNoticeInsert.do", produces =
	 * "text/plain;charset=utf-8")
	 * 
	 * @ResponseBody public String adminNoticeInsert(Model model, AnnoVO anno) {
	 * 
	 * int result = yservice.adminNoticeInsert(anno); if (result > 0) { return
	 * "등록 성공"; } else { return "등록 실패";
	 * 
	 * } }
	 */
	
	
	
	
}
