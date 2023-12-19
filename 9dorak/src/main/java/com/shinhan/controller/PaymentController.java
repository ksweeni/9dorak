package com.shinhan.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.PayVO;
import com.shinhan.model.PayService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class PaymentController {

	@Autowired
	PayService pService;
	private final IamportClient iamportClient;

	public PaymentController() {
		this.iamportClient = new IamportClient("2473561448647236",
				"e3h05uZuutCJFe3JxCpFkqH5Qp90bvbNdPUC9j6Szr9uKb79mewNzS74gQgDVgI39qIUajRB58SQ6BTj");
	}

    @ResponseBody
	@PostMapping("/cancelPay")
    public String cancelPay(@RequestParam String imp_uid) throws Exception {
    	try {
    		String token = pService.getUserToken();
    		System.out.println("받아온 토큰"  + token);
           pService.paymentCancel(token,imp_uid, 100, "맘에 안 들어요");
           pService.updatePayStatus(imp_uid);
            return "Payment canceled successfully!";
        } catch (IOException e) {
            e.printStackTrace();
            return "Failed to cancel payment. Check logs for details.";
        }
    }
	
	@ResponseBody
	@RequestMapping("verify/{imp_uid}")
	public String paymentVerification(@PathVariable("imp_uid") String imp_uid, Model model) {
		
		try {
			IamportResponse<Payment> iamportResponse = iamportClient.paymentByImpUid(imp_uid);

			if ("paid".equals(iamportResponse.getResponse().getStatus())) {
				System.out.println("paid");
				String paymethod="";

				try {
					String token = pService.getUserToken();
					//System.out.println("토큰입니다 : " + token);
					//int amounts = pService.paymentInfo(imp_uid, token);
					System.out.println("결제한 금액 : "+pService.paymentInfo(imp_uid, token));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// Extract information from the payment response
				Payment payment = iamportResponse.getResponse();
				String productName = payment.getName(); // 상품명
				BigDecimal paidAmount = payment.getAmount(); // 가격
				String currency = payment.getCurrency(); // Currency
				String paymentMethod = payment.getPayMethod(); // point로 했다는데
				
				String impuid = payment.getImpUid(); // 영수증 정보 무조건 필요 ( 환불 시 )

				// Buyer information
				String buyerName = payment.getBuyerName(); // 산 사람 이름
				String buyerEmail = payment.getBuyerEmail(); // Buyer's email
				String buyerTel = payment.getBuyerTel(); // Buyer's phone number
				String buyerAddr = payment.getBuyerAddr(); // buyer's buyer shop
				String buyerPostcode = payment.getBuyerPostcode(); // 01181
				System.out.println(productName);
				
				
				int roundedAmount = paidAmount.setScale(0, RoundingMode.HALF_UP).intValue();
				System.out.println(roundedAmount);
				System.out.println(currency);

				paymethod = CurrentPayMethod(paymentMethod);

				System.out.println(paymethod);
				System.out.println(buyerName);
				System.out.println(buyerEmail);
				System.out.println(buyerTel);
				System.out.println(buyerAddr);
				System.out.println(buyerPostcode);
				System.out.println(impuid);
				
				int index = pService.selectPayCount();
				
				PayVO pay = new PayVO();
				pay.setOrder_no(index+1);
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