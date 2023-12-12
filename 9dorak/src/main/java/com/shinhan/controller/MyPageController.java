package com.shinhan.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.model.MyPageService;


/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("my")
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	MyPageService mService;

	@GetMapping("myPage.do")
	public String myPage(Model model, HttpSession session) {

		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		MemVO mem = mService.getMember(loginmem.getMem_id());
		model.addAttribute("mem", mem);
		return "my/myPage";
	}

	@GetMapping("logout.do")
	public String logut(Model model, HttpSession session) {
		session.invalidate();
		return "home";
	}

	@GetMapping("myMenu.do")
	public String myMenu(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		MemVO mem = mService.getMember(loginmem.getMem_id());
		model.addAttribute("mem", mem);
		return "my/myMenu";
	}

	@RequestMapping(value = "updateMember.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String updateMember(Model model, HttpSession session, MemVO mem) {

		int result = mService.updateMember(mem);
		if (result > 0) {
			MemVO loginmem = mService.getMember(mem.getMem_id());
			session.setAttribute("loginmem", loginmem);
			model.addAttribute("mem", loginmem);
			return "수정 성공";
		} else {
			return "수정 실패";

		}

	}

	@GetMapping("deleteMember.do")
	public String deleteMember(Model model, HttpSession session, MemVO mem) {
		int result = mService.deleteMember(mem.getMem_id());
		if (result > 0) {
			session.invalidate();
		}
		return "home";
	}

	@GetMapping("myDelivery.do")
	public String myDelivery(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		MemVO mem = mService.getMember(loginmem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(loginmem.getMem_id());
		model.addAttribute("mem", mem);
		model.addAttribute("dlist", dlist);

		return "my/myDelivery_ajax";
	}

	// 팝업으로 띄우기
	@GetMapping("selectDelivery.do")
	public String selectDelivery(Model model, HttpSession session) {

		return "my/selectDelivery";
	}

	@PostMapping("deleteDelivery.do")
	public String deleteDelivery(Model model, HttpSession session, MemDeliveryVO memdel) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		memdel.setMem_id(loginmem.getMem_id());
		int result = mService.deleteDelivery(memdel);
		MemVO mem = mService.getMember(loginmem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(loginmem.getMem_id());
		model.addAttribute("mem", mem);
		model.addAttribute("dlist", dlist);
		return "my/myDelivery_ajax";
	}

	@RequestMapping(value = "insertDelivery.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String insertDelivery(Model model, HttpSession session, MemDeliveryVO memDel) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		memDel.setMem_id(loginmem.getMem_id());
		int count = mService.selectDelivery(memDel);
		if (count > 0) {
			return "false";
		}
		int result = mService.insertDelivery(memDel);
//		System.out.println(result);
		return "my/myDelivery_ajax";
	}


	
	//
	
	@GetMapping("pointAndCoupon.do")
	public String pointAndCouponPage(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		String mem_id = loginmem.getMem_id();
		List<ProVO> likeList = mService.getLikeList("aaa");
		// 나중에는 로그인한 사람 아이디로 바꾸자
		model.addAttribute("loginmem", loginmem);
		model.addAttribute("likeList", likeList);
		return "my/pointAndCoupon";
	}
	@GetMapping("coupon_ajax.do")
	public String couponPage(Model model, HttpSession session) {
//		System.out.println("coupon_ajax.do");
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		String mem_id = loginmem.getMem_id();
		List<CouponVO> clist = mService.getCoupon(mem_id);
		model.addAttribute("loginmem", loginmem);
		model.addAttribute("clist", clist);
		return "my/coupon_ajax";
	}
	@RequestMapping(value = "couponReg.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String couponPage(Model model, HttpSession session, CouponVO coupon ){
//		System.out.println(coupon);
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		model.addAttribute("loginmem", loginmem);
		int check = mService.couponCheck(coupon);
		if (check == 1) {
			int result = mService.couponRegUpdate(coupon);
			return "쿠폰 등록 성공";
		} else {
			return "이미 등록되거나 잘못된 코드 입니다.";
		}
	}
}
