package com.shinhan.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.ChallengeVO;
import com.shinhan.dto.CouponVO;
import com.shinhan.dto.FaqVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OneaskVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.PagingVO;
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
		return "admin/adminMenuDetail";
	}
	
	@GetMapping("adminMenuInsert.do")
	public String adminMenuInsertPage(Model model) {
		return "admin/adminMenuInsert";
	}
	
	@PostMapping("adminMenuInsert.do")
	public String adminMenuInsert(Model model, ProVO menu) {
		int result = mService.insertMenu(menu);
		List<ProVO> mlist = mService.selectAll();
		model.addAttribute("mlist", mlist);
		return "redirect:/admin/adminMenu.do";
	}
	
	@RequestMapping(value = "adminMenuUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminMenuUpdate(Model model, ProVO menu) {
		int result = mService.updateMenu(menu);
		if (result > 0) {
			return "수정 성공";
		} else {
			return "수정 실패";
		}
	}

	@RequestMapping(value = "adminMenuDelete.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminMenuDelete(Model model, ProVO menu) {
		int result = mService.deleteMenu(menu.getPro_no());
		if (result > 0) {
			return "삭제 성공";
		} else {
			return "삭제 실패";
		}
	}

	@GetMapping("adminMember.do")
	public String adminMember(Model model) {
		List<MemVO> memlist = memService.selectAll();
		model.addAttribute("memlist", memlist);
		return "admin/adminMember";
	}
	
	@PostMapping("adminMember.do")
	public String adminMemberDetail(Model model, MemVO mem) {
		MemVO detailmem = memService.selectByid(mem.getMem_id());
		model.addAttribute("detailmem", detailmem);
		return "admin/adminMemberDetail";
	}
	
	@RequestMapping(value = "adminMemberUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminMemberUpdate(Model model, MemVO mem) {
		int result = memService.updateMem(mem);
		if (result > 0) {
			return "수정 성공";
		} else {
			return "수정 실패";
		}
	}

	@RequestMapping(value = "adminMemberDelete.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminMemberDelete(Model model, MemVO mem) {
		int result = memService.deleteMem(mem.getMem_id());
		if (result > 0) {
			return "삭제 성공";
		} else {
			return "삭제 실패";
		}
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

//	@GetMapping("adminNotice.do")
//	public String adminNotice(Model model) {
//		List<AnnoVO> ylist = yservice.selectAll();
//		List<FaqVO> flist = yservice.selectFaqAll();
//		model.addAttribute("ylist", ylist);
//		model.addAttribute("flist", flist);
//		return "admin/adminNotice";
//	}

	@GetMapping("adminEvent.do")
	public String adminEvent(Model model) {
		List<ChallengeVO> chlist = chService.selectAll();
		model.addAttribute("chlist", chlist);
		return "admin/adminEvent";
	}
	
	@GetMapping("adminEventDetail.do")
	public String adminEventDetail(Model model, @RequestParam("challenge_no") int challengeNo) {
	    ChallengeVO challenge = chService.selectByno(challengeNo);
	    model.addAttribute("challenge", challenge);
	    return "admin/adminEventDetail";
	}
	
	@RequestMapping(value = "adminEventUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminEventUpdate(Model model, ChallengeVO challenge) {
		int result = chService.updateChall(challenge);
		if (result > 0) {
			return "수정 성공";
		} else {
			return "수정 실패";

		}
	}
	
	@RequestMapping(value = "adminEventDelete.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminNoticeDelete(Model model, ChallengeVO challenge) {
		int result = chService.deleteChal(challenge.getChallenge_no());
		if (result > 0) {
			return "삭제 성공";
		} else {
			return "삭제 실패";
			
		}
	}

	@GetMapping("adminPoint.do")
	public String adminPoint(Model model) {
		List<CouponVO> clist = couponService.selectAll();
		model.addAttribute("clist", clist);
		List<String> coupon = couponService.selectDistinctCoupon();
		model.addAttribute("coupon", coupon);
		return "admin/adminPoint";
	}

	@PostMapping("adminCouponInsert.do")
	@ResponseBody
	public String adminCouponInsert(
	    @RequestParam String couponName,
	    @RequestParam List<String> selectedMembers) {
	   
	    for (String memberId : selectedMembers) {
	        CouponVO coupon = new CouponVO();
	        coupon.setCoupon_code(null);
	        coupon.setCoupon_name(couponName);
	        coupon.setCoupon_reg("미등록");
	        coupon.setCoupon_check("미사용");
	        coupon.setMem_id(memberId); 
	        couponService.insertCoupon(coupon);
	    }

	    return "coupon insert Success !";
	}
	
	@PostMapping("adminCouponDelete.do")
	@ResponseBody
	public String adminCouponDelete(@RequestBody List<String> couponCodes) {
	    List<Integer> intCodes = new ArrayList<>();
	    List<String> stringCodes = new ArrayList<>();
	    for (String code : couponCodes) {
	        try {
	            intCodes.add(Integer.parseInt(code));
	        } catch (NumberFormatException e) {
	            stringCodes.add(code);
	        }
	    }
	    if (!intCodes.isEmpty()) {
	        couponService.deleteCoupons(intCodes);
	        return "coupon number delete Success!";
	    }
	    if (!stringCodes.isEmpty()) {
	        for (String code : stringCodes) {
	            couponService.deleteCouponName(code);
	        }
	        return "coupon name delete Success!";
	    }
	    return "No valid coupons found for deletion!";
	}



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("adminNoticeDetail.do")
	public String adminNoticeDetail(Model model, AnnoVO anno) {
		anno = yservice.selectByno(anno.getAnno_no());
		model.addAttribute("anno", anno);
		return "admin/adminNoticeDetail";
	}
	@GetMapping("adminNoticeFaqDetail.do")
	public String adminNoticeFaqDetail(Model model, FaqVO faq) {
		faq = yservice.selectFaq_no(faq.getFaq_no());
		model.addAttribute("faq", faq);
		return "admin/adminNoticeFaqDetail";
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
	@RequestMapping(value = "adminnoticeFaqUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminnoticeFaqUpdate(Model model, FaqVO faq) {
		int result = yservice.adminnoticeFaqUpdate(faq);
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
	@RequestMapping(value = "adminnoticeFaqDelete.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminnoticeFaqDelete(Model model, FaqVO faq) {
		int result = yservice.adminnoticeFaqDelete(faq.getFaq_no());
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
	
	@GetMapping("adminNoticeFaqInsert.do")
	public String adminNoticeFaqInsert() {
		
		return "admin/adminNoticeFaqInsert";
	}
	
	
	
	@RequestMapping(value = "adminNoticeInsert.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminNoticeInsert(Model model, AnnoVO anno) {
		
		int result = yservice.adminNoticeInsert(anno);
		if (result > 0) {
			return "등록 성공";
		} else {
			return "등록 실패";
		}
	}
	@RequestMapping(value = "adminNoticeFaqInsert.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String adminNoticeFaqInsert(Model model, FaqVO faq) {
		
		int result = yservice.adminNoticeFaqInsert(faq);
		if (result > 0) {
			return "등록 성공";
		} else {
			return "등록 실패";
		}
	}
	
	
	
	@GetMapping("adminNotice.do")
	public String adminNotice(Model model ,@ModelAttribute("AnnoVO") AnnoVO AnnoVO,
			@ModelAttribute("FaqVO") FaqVO FaqVO,
			@RequestParam(defaultValue = "1") int currentPage) {
		List<AnnoVO> ylistAll = yservice.selectAll();
		List<FaqVO> flistAll = yservice.selectFaqAll();
		int totalCount = ylistAll.size(); // 전체게시물수
		PagingVO pagingVO = new PagingVO(totalCount, currentPage);
		
		int totalCount2 = flistAll.size();
		PagingVO pagingVO2 = new PagingVO(totalCount2, currentPage);
		
		AnnoVO.setStartIndex(pagingVO.getStartIndex()); // 뭔지 모름..
		AnnoVO.setCntPerPage(pagingVO.getDisplayRow()); // 한페이지에 게시물 수
		AnnoVO.setCurrentPage(pagingVO.getCurrentPage()); // 현재페이지
		///
		
		FaqVO.setStartIndex(pagingVO2.getStartIndex()); // 뭔지 모름..
		FaqVO.setCntPerPage(pagingVO2.getDisplayRow()); // 한페이지에 게시물 수
		FaqVO.setCurrentPage(pagingVO2.getCurrentPage()); // 현재페이지
		List<Map<String, Object>> ylist = yservice.list(AnnoVO); // 전체목록조회

		List<Map<String, Object>> flist = yservice.list2(FaqVO); // 전체목록조회
//		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("pagingVO2", pagingVO2);
		model.addAttribute("ylist", ylist);
		model.addAttribute("flist", flist);
		return "admin/adminNotice";
	}

	
	@GetMapping("adminSearchAnno.do")
	public String adminSearchAnno(@RequestParam("keyword") String keyword , Model model) {
//		System.out.println(keyword);
		List<AnnoVO> ylist = yservice.searchYomo(keyword);
		model.addAttribute("ylist", ylist);
		return "admin/adminNotice";
	}

	
}
