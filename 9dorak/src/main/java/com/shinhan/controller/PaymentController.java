package com.shinhan.controller;

import java.io.IOException;

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
			// Perform payment verification using iamportClient or your logic
			IamportResponse<Payment> iamportResponse = iamportClient.paymentByImpUid(imp_uid);

			   if ("paid".equals(iamportResponse.getResponse().getStatus())) {
				   System.out.println("paid");
		            // Set a success message
		            model.addAttribute("resultMessage", "Payment verification successful");
		        } else {
		            // Set a failure message
		            model.addAttribute("resultMessage", "Payment verification failed");
		        }
			   return "my/payTest";
		} catch (IamportResponseException | IOException e) {
			// Handle exceptions or log errors
			e.printStackTrace();
			model.addAttribute("resultMessage", "Errorl");
			return "my/payTest";
		}
	}

}