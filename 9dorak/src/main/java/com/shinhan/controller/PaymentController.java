package com.shinhan.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
import com.shinhan.dto.PayVO;
import com.shinhan.model.OrderService;
import com.shinhan.model.PayService;
import com.shinhan.model.WalletService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class PaymentController {
	@Autowired
	WalletService wService;
	@Autowired
	PayService pService;
	@Autowired
	OrderService oService;

	private final IamportClient iamportClient;

	public PaymentController() {
		this.iamportClient = new IamportClient("2473561448647236",
				"e3h05uZuutCJFe3JxCpFkqH5Qp90bvbNdPUC9j6Szr9uKb79mewNzS74gQgDVgI39qIUajRB58SQ6BTj");
	}

	@ResponseBody
	@PostMapping("/cancelPay")
	public String cancelPay(@RequestParam String imp_uid, @RequestParam String refundReason) throws Exception {
		try {
			String token = pService.getUserToken();
			int amount = pService.paymentInfo(imp_uid, token);
			pService.paymentCancel(token, imp_uid, amount, refundReason);
			pService.updatePayStatus(imp_uid);
			pService.updateOrderStatus();
			return "Payment canceled successfully!";
		} catch (IOException e) {
			e.printStackTrace();
			return "Failed to cancel payment. Check logs for details.";
		}
	}

	@ResponseBody
	@RequestMapping("verify/{imp_uid}")
//	public String paymentVerification(@PathVariable("imp_uid") String imp_uid, @RequestParam("order_no") int order_no,
//			Model model) {
	public String paymentVerification(@PathVariable("imp_uid") String imp_uid,
			Model model) {
		try {
			IamportResponse<Payment> iamportResponse = iamportClient.paymentByImpUid(imp_uid);
			if ("paid".equals(iamportResponse.getResponse().getStatus())) {
				String paymethod = "";

				try {
					String token = pService.getUserToken();
					System.out.println("결제한 금액 : " + pService.paymentInfo(imp_uid, token));
				} catch (Exception e) {

					e.printStackTrace();
				}
				int order_no  =wService.selectOrderNum();
				System.out.println(order_no);
				Payment payment = iamportResponse.getResponse();
				String productName = payment.getName(); // 상품명
				BigDecimal paidAmount = payment.getAmount(); // 가격
				String currency = payment.getCurrency(); // Currency
				String paymentMethod = payment.getPayMethod(); // point로 했다는데
				String impuid = payment.getImpUid(); // 영수증 정보 무조건 필요 ( 환불 시 )
				String buyerName = payment.getBuyerName(); // 산 사람 이름
				String buyerEmail = payment.getBuyerEmail(); // Buyer's email
				String buyerTel = payment.getBuyerTel(); // Buyer's phone number
				String buyerAddr = payment.getBuyerAddr(); // buyer's buyer shop
				String buyerPostcode = payment.getBuyerPostcode(); // 01181

				int roundedAmount = paidAmount.setScale(0, RoundingMode.HALF_UP).intValue();
				paymethod = CurrentPayMethod(paymentMethod);

				PayVO pay = new PayVO();
				pay.setOrder_no(order_no);
				pay.setPay_date(null);
				pay.setPay_status("결제 완료");
				pay.setPay_depo(buyerName);
				pay.setImp_uid(impuid);

				pay.setPay_depobank(paymethod);
				pay.setPay_method(paymethod);

				pay.setPay_depoprice(roundedAmount);
				pay.setPay_price(roundedAmount);
				System.out.println(pay);
				pService.insertPay(pay);
				deleteBasketAfterPay(order_no);
			} else {
				model.addAttribute("resultMessage", "Payment verification failed");
			}
			return "my/payTest";
		} catch (IamportResponseException | IOException e) {

			e.printStackTrace();
			model.addAttribute("resultMessage", "Error");
			return "my/payTest";
		}
	}

	private String CurrentPayMethod(String paymentMethod) {
		if (paymentMethod.equals("card")) {
			return "신용카드";
		} else if (paymentMethod.equals("trans")) {
			return "실시간 계좌이체";
		} else if (paymentMethod.equals("samsung")) {
			return "삼성페이";
		} else if (paymentMethod.equals("kakaopay") || paymentMethod.equals("point")) {
			return "카카오페이";
		} else if (paymentMethod.equals("naverpay")) {
			return "네이버페이";
		} else if (paymentMethod.equals("payco")) {
			return "페이코";
		} else if (paymentMethod.equals("tosspay")) {
			return "토스간편결제";
		} else {
			return "카드";
		}
	}

	@ResponseBody
	@PostMapping("/subOrder")
	public String subOrder(OrderdetailVO orderdetail, OrderVO order, HttpSession session) {
	
		System.out.println("Asd:" + order);
		System.out.println(orderdetail);
		MemVO mem = (MemVO) session.getAttribute("loginmem");
		order.setMem_id(mem.getMem_id());
		int result = pService.subOrderInsert(order);
		System.out.println(result);
		int order_no = wService.selectOrderNum();
		orderdetail.setOrder_no(order_no);
		int result2 = pService.subOrderDetailInsert(orderdetail);
		System.out.println(result2);
		return "";
	}

	@ResponseBody
	@PostMapping("/proOrder")
	public String proOrder(HttpSession session) {

		MemVO mem = (MemVO) session.getAttribute("loginmem");
		int order_no = pService.updateOrder_no(mem);

		int result = pService.updateOrder(order_no);

		return "";
	}

	@PostMapping("deleteBasketAfterOrder.do")
	@ResponseBody
	public Map<String, Object> deleteBasketAfterPay(@RequestBody int order_no) {
		Map<String, Object> response = new HashMap<>();
		OrderVO order = oService.orderIDCheck(order_no);
		List<OrderdetailVO> pList = oService.orderProNoCheck(order_no);

		for (OrderdetailVO orderdetailVO : pList) {
			try {
				wService.deleteBasketPay(order.getMem_id(), orderdetailVO.getPro_no());
				System.out.println("Basket deleted successfully.");
			} catch (Exception e) {
				System.out.println("Error deleting basket: " + e.getMessage());
				e.printStackTrace();
			}

		}

		response.put("success", true);
		return response;
	}

	@RequestMapping("/delBasket")
	public String deleteBasket() {
		
		return "success";
	}

}