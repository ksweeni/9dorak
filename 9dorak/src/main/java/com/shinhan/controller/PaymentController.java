package com.shinhan.controller;

import java.io.IOException;
import java.math.BigDecimal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class PaymentController {

	private final IamportClient iamportClient;

	public PaymentController() {
		this.iamportClient = new IamportClient("2473561448647236",
				"e3h05uZuutCJFe3JxCpFkqH5Qp90bvbNdPUC9j6Szr9uKb79mewNzS74gQgDVgI39qIUajRB58SQ6BTj");
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/verify/{imp_uid}") public IamportResponse<Payment>
	 * paymentByImpUid(@PathVariable("imp_uid") String imp_uid) throws
	 * IamportResponseException, IOException {
	 * 
	 * return iamportClient.paymentByImpUid(imp_uid); }
	 */

	@ResponseBody
	@RequestMapping("verify/{imp_uid}")
	public String paymentVerification(@PathVariable("imp_uid") String imp_uid, Model model) {
		System.out.println("asd");
		try {
			IamportResponse<Payment> iamportResponse = iamportClient.paymentByImpUid(imp_uid);

			if ("paid".equals(iamportResponse.getResponse().getStatus())) {
				System.out.println("paid");
				String paymethod="";

				// Extract information from the payment response
				Payment payment = iamportResponse.getResponse();
				String productName = payment.getName(); // 상품명
				BigDecimal paidAmount = payment.getAmount(); // 가격
				String currency = payment.getCurrency(); // Currency
				String paymentMethod = payment.getPayMethod(); // point로 했다는데

				// Buyer information
				String buyerName = payment.getBuyerName(); // 산 사람 이름
				String buyerEmail = payment.getBuyerEmail(); // Buyer's email
				String buyerTel = payment.getBuyerTel(); // Buyer's phone number
				String buyerAddr = payment.getBuyerAddr(); // buyer's buyer shop
				String buyerPostcode = payment.getBuyerPostcode(); // 01181
				System.out.println(productName);
				System.out.println(paidAmount);
				System.out.println(currency);

				paymethod = CurrentPayMethod(paymentMethod);

				System.out.println(paymethod);
				System.out.println(buyerName);
				System.out.println(buyerEmail);
				System.out.println(buyerTel);
				System.out.println(buyerAddr);
				System.out.println(buyerPostcode);
			} else {

				model.addAttribute("resultMessage", "Payment verification failed");
			}

			return "my/payTest";
		} catch (IamportResponseException | IOException e) {
			// Handle exceptions or log errors
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

}