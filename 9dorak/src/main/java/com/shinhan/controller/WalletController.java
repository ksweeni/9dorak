package com.shinhan.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.CouponVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
import com.shinhan.dto.PayVO;
import com.shinhan.dto.PeopleVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.EventService;
import com.shinhan.model.MyPageService;
import com.shinhan.model.SubService;
import com.shinhan.model.WalletService;

@Controller
@RequestMapping("wallet")
public class WalletController {

	@Autowired
	WalletService wService;
	@Autowired
	EventService eService;

	@Autowired
	MyPageService mService;

	@Autowired
	SubService subService;

	private static final Logger logger = LoggerFactory.getLogger(WalletController.class);
//	@RequestParam(value = "memList[]", required = false) String[] memList,
//	@RequestParam(value = "proList[]", required = false) String[] proList
	// 주문하기 수정 필요
	@PostMapping("pay.do")
	public String pay(Model model, HttpSession session) {
		List<PayVO> plist = wService.selectAllPay();
		model.addAttribute("plist", plist);
		if (session.getAttribute("loginmem") == null) {
			return "redirect:/login/loginForm.do";
		}
//		List<String> memberList = new ArrayList<>(Arrays.asList(memList));
//		List<String> productList = new ArrayList<>(Arrays.asList(proList));
		
 
//		for ( int i= 0 ; i < memberList.size() ; i++) {
//			BasketVO bas = new BasketVO();
//			bas.setMem_id(memberList.get(i));
//			bas.setPro_no(Integer.parseInt(productList.get(i)) );
//			wService.deleteBasket(bas);
//		}
		
		
		MemVO mem = (MemVO) session.getAttribute("loginmem");
		List<CouponVO> clist = mService.getCoupon(mem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(mem.getMem_id());
		int order_no = wService.selectOrderNum();
		System.out.println(order_no);
		List<OrderVO> olist = wService.getOrderList(order_no);

		int total = 0;
		int item = 0;
		for (OrderVO or : olist) {
			total += or.getPro_price() * or.getOrderdetail_count();
			item += or.getOrderdetail_count();
		}
		System.out.println(item);
//		DecimalFormat decimalFormat = new DecimalFormat("#,###");
//		String formattedTotal = decimalFormat.format(total);
		model.addAttribute("total", total);
		model.addAttribute("item", item);
		model.addAttribute("clist", clist);
		model.addAttribute("mem", mem);
		model.addAttribute("dlist", dlist);
		model.addAttribute("olist", olist);
		model.addAttribute("order_no", order_no);
		
		return "wallet/pay";
	}

	// 주문, 주문 디테일 테이블 data insert
	@PostMapping("insertOrder.do")
	@ResponseBody
	public Map<String, Object> insertOrder(@RequestBody OrderVO order, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();
		int resultOrder = wService.insertOrder(order);
		int order_no = wService.selectOrderNum();

		if (resultOrder > 0) {
			response.put("success", true);
			response.put("message", "Order added successfully.");
			response.put("order_no", order_no);
		} else {
			response.put("success", false);
			response.put("message", "Failed to add order.");
		}
		return response;
	}

	@PostMapping("insertOrderDetail.do")
	@ResponseBody
	public Map<String, Object> insertOrderDetail(@RequestBody OrderdetailVO orderDetail, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();

		int resultOrderDetail = wService.insertOrderDetail(orderDetail);

		if (resultOrderDetail > 0) {
			response.put("success", true);
			response.put("message", "OrderDetail added successfully.");
		} else {
			response.put("success", false);
			response.put("message", "Failed to add orderDetail.");
		}
		return response;
	}

	// 장바구니 삭제
	@PostMapping("deleteBasket.do")
	@ResponseBody
	public Map<String, Object> deleteBasket(@RequestBody BasketVO basket) {
		Map<String, Object> response = new HashMap<>();

		System.out.println(basket);
		int result = wService.deleteBasket(basket);
		System.out.println(basket);

		if (result > 0) {
			response.put("success", true);
		} else {
			response.put("success", false);
		}
		return response;
	}

	// 장바구니 수량 변경
	@PostMapping("updateBasket.do")
	@ResponseBody
	public String updateBasket(BasketVO basket) {
		System.out.println(basket);
		int result = wService.updateBasket(basket);
		String flag;

		if (result > 0) {
			flag = "성공!";
		} else {
			flag = "실패!";
		}
		return flag;
	}

	// 회원이 담은 상품 목록
	@GetMapping("basket.do")
	public String basket(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		MemVO member = wService.checkMember(loginmem.getMem_id());
		List<BasketVO> blist = wService.emptyBasket(loginmem.getMem_id());
		List<PeopleVO> people = wService.peopleCheck(loginmem.getMem_id());

		List<Map<String, Object>> basket;

		if (people == null || people.isEmpty()) {
			basket = wService.noPeopleBasket(loginmem.getMem_id());
			System.out.println(basket);
		} else {
			basket = wService.allPeopleBasket(loginmem.getMem_id());
			System.out.println(basket);
		}

		model.addAttribute("mem", member);
		model.addAttribute("blist", blist);
		model.addAttribute("people", people);
		model.addAttribute("basket", basket);

		return "wallet/basket";
	}

	// 장바구니에 이미 해당 아이디-상품 존재 여부
	@PostMapping("checkBasket.do")
	@ResponseBody
	public Map<String, Object> checkBasket(@RequestParam("mem_id") String mem_id, @RequestParam("pro_no") int pro_no) {
		Map<String, Object> response = new HashMap<>();
		List<BasketVO> basketList = wService.checkBasket(mem_id, pro_no);

		if (basketList != null && !basketList.isEmpty()) {
			response.put("success", false);
		} else {
			response.put("success", true);
		}
		return response;
	}

	// 메뉴 상세 페이지에서 구도락 담기
	@PostMapping("addBasket.do")
	public @ResponseBody Map<String, Object> addBasket(Model model, BasketVO basket, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();
		int result = wService.addBasket(basket);

		if (result > 0) {
			response.put("success", true);
		} else {
			response.put("success", false);
		}
		return response;
	}

	// 장바구니 비어있는지 여부 판별하여 header 장바구니 불 켜기
	@PostMapping("emptyBasket.do")
	@ResponseBody
	public Map<String, Object> emptyBasket(@RequestParam("mem_id") String mem_id) {
		Map<String, Object> response = new HashMap<>();
		List<BasketVO> basketList = wService.emptyBasket(mem_id);

		if (basketList != null && !basketList.isEmpty()) {
			response.put("success", true);
		} else {
			response.put("success", false);
		}
		return response;
	}

	@GetMapping("free.do")
	public String freelunchbox(Model model) {
		List<ProVO> freelist = eService.selectFreeAll();
		model.addAttribute("freelist", freelist);
		return "wallet/pay";
	}

	@GetMapping("sub9a.do")
	public String sub9a(Model model, HttpSession session) {
		List<ProVO> sub9allist = subService.selectAllSub9A();
		if ((MemVO) session.getAttribute("loginmem") == null) {
			return "redirect:/login/loginForm.do";
		}
		MemVO mem = (MemVO) session.getAttribute("loginmem");
		List<CouponVO> clist = mService.getCoupon(mem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(mem.getMem_id());
		model.addAttribute("sub9allist", sub9allist);
		model.addAttribute("total", 59000);
		model.addAttribute("mem", mem);
		model.addAttribute("clist", clist);
		model.addAttribute("dlist", dlist);
		return "wallet/pay";
	}

	@GetMapping("sub9b.do")
	public String sub9b(Model model, HttpSession session) {
		List<ProVO> sub9bllist = subService.selectAllSub9B();
		if ((MemVO) session.getAttribute("loginmem") == null) {
			return "redirect:/login/loginForm.do";
		}
		MemVO mem = (MemVO) session.getAttribute("loginmem");
		model.addAttribute("sub9bllist", sub9bllist);
		List<CouponVO> clist = mService.getCoupon(mem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(mem.getMem_id());
		model.addAttribute("total", 59000);
		model.addAttribute("mem", mem);
		model.addAttribute("clist", clist);
		model.addAttribute("dlist", dlist);
		return "wallet/pay";
	}

	@GetMapping("sub19a.do")
	public String sub19a(Model model, HttpSession session) {
		if ((MemVO) session.getAttribute("loginmem") == null) {
			return "redirect:/login/loginForm.do";
		}
		MemVO mem = (MemVO) session.getAttribute("loginmem");
		List<ProVO> sub19allist = subService.selectAllSub19A();
		model.addAttribute("sub19allist", sub19allist);
		List<CouponVO> clist = mService.getCoupon(mem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(mem.getMem_id());
		model.addAttribute("total", 99000);
		model.addAttribute("mem", mem);
		model.addAttribute("clist", clist);
		model.addAttribute("dlist", dlist);
		return "wallet/pay";
	}

	@GetMapping("sub19b.do")
	public String sub19b(Model model, HttpSession session) {
		if ((MemVO) session.getAttribute("loginmem") == null) {
			return "redirect:/login/loginForm.do";
		}
		MemVO mem = (MemVO) session.getAttribute("loginmem");
		List<ProVO> sub19bllist = subService.selectAllSub19B();
		model.addAttribute("sub19bllist", sub19bllist);
		List<CouponVO> clist = mService.getCoupon(mem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(mem.getMem_id());
		model.addAttribute("total", 99000);
		model.addAttribute("mem", mem);
		model.addAttribute("clist", clist);
		model.addAttribute("dlist", dlist);
		return "wallet/pay";
	}

	// 메뉴 상세 페이지에서 단일 상품 주문
	@PostMapping("singlePro.do")
	@ResponseBody
	public Map<String, Object> singlePro(@RequestBody OrderVO order, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();
		int resultOrder = wService.insertOrder(order);
		int order_no = wService.selectOrderNum();

		if (resultOrder > 0) {
			response.put("success", true);
			response.put("message", "Order added successfully.");
			response.put("order_no", order_no);
		} else {
			response.put("success", false);
			response.put("message", "Failed to add order.");
		}
		return response;
	}

	@PostMapping("singleProDetail.do")
	@ResponseBody
	public Map<String, Object> singleProDetail(@RequestBody OrderdetailVO orderDetail, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();

		int resultOrderDetail = wService.insertOrderDetail(orderDetail);

		if (resultOrderDetail > 0) {
			response.put("success", true);
			response.put("message", "OrderDetail added successfully.");
		} else {
			response.put("success", false);
			response.put("message", "Failed to add orderDetail.");
		}
		return response;
	}

}