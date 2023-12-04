package com.shinhan.controller;

import java.util.HashMap;
import java.util.Map;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shinhan.dto.MemVO;
import com.shinhan.model.LoginService;

@Controller
@RequestMapping("login")
public class LoginController {

	@Autowired
	LoginService lservice;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@GetMapping("loginForm.do")
	public String loginForm() {
		return "login/login";
	}

	@PostMapping("login.do")
	public String login(@RequestParam String mem_id, @RequestParam String mem_pw, HttpSession session, Model model) {

		MemVO loginmem = lservice.login(mem_id, mem_pw);

		if (loginmem != null) {
			session.setAttribute("loginmem", loginmem);
			return "redirect:/"; // 로그인 성공 시 메인 페이지로 리다이렉트
		} else {
			// 로그인 실패 시 처리
			model.addAttribute("loginErrorMessage", "아이디 또는 비밀번호가 잘못되었습니다.");
			return "login/login"; // 다시 로그인 페이지로
		}
	}

	@GetMapping("findIdForm.do")
	public String findIdForm() {
		return "login/findID";
	}

	@PostMapping("findId.do")
	public String findId(@RequestParam String mem_name, @RequestParam String mem_phone, @RequestParam String mem_bd,
			Model model) {

		MemVO foundid = lservice.findId(mem_name, mem_phone, mem_bd);

		if (foundid != null) {
			// 사용자를 찾았을 경우 처리 해당 아이디를 모델에 추가
			model.addAttribute("foundId", foundid.getMem_id());
			return "login/foundID"; // 아이디를 찾았을 때의 페이지로 이동
		} else {
			// 사용자를 찾지 못했을 경우 처리
			model.addAttribute("findUserErrorMessage", "입력한 정보와 일치하는 사용자를 찾을 수 없습니다.");
			return "login/findID"; // 다시 아이디 찾기 페이지로
		}
	}

	@GetMapping("findPwdForm.do")
	public String findPwdForm() {
		return "login/findPwd";
	}

	@PostMapping("findPwd.do")
	public String findPwd(@RequestParam String mem_id, @RequestParam String mem_name, @RequestParam String mem_phone,
			Model model, HttpSession session) {

		MemVO foundPwd = lservice.findPwd(mem_id, mem_name, mem_phone);

		if (foundPwd != null) {
			model.addAttribute("foundPwd", foundPwd);
			model.addAttribute("successMessage", "새로운 비밀번호를 설정하세요.");

			// 세션에 정보 저장
			session.setAttribute("updatePwdInfo",
					Map.of("mem_id", mem_id, "mem_name", mem_name, "mem_phone", mem_phone));

			return "login/createNewPwd"; // 새로운 비밀번호 설정 페이지로 이동
		} else {
			// 사용자를 찾지 못했을 경우 처리
			model.addAttribute("findUserErrorMessage", "입력한 정보와 일치하는 사용자를 찾을 수 없습니다.");
			return "login/findPwd"; // 다시 비밀번호 찾기 페이지로
		}
	}

	@PostMapping("updatePwd.do")
	public String updatePwd(HttpSession session, @RequestParam String newPwd, @RequestParam String confirm_pw, Model model) {
		Map<String, String> updatePwdInfo = (Map<String, String>) session.getAttribute("updatePwdInfo");

		if (updatePwdInfo != null) {
			String mem_id = updatePwdInfo.get("mem_id");
			String mem_name = updatePwdInfo.get("mem_name");
			String mem_phone = updatePwdInfo.get("mem_phone");

			// 새 비밀번호와 비밀번호 확인이 일치하는지 확인
			if (newPwd.equals(confirm_pw)) {
				// 비밀번호 변경 로직
				int rowsUpdated = lservice.updatePwd(mem_id, mem_name, mem_phone, newPwd);

				if (rowsUpdated > 0) {
					model.addAttribute("successMessage", "비밀번호가 성공적으로 변경되었습니다.");
					return "login/login"; // 변경 성공 시 로그인 페이지로 이동
				} else {
					model.addAttribute("errorMessage", "비밀번호 변경에 실패했습니다. 입력 정보를 확인하세요.");
					return "login/createNewPwd"; // 변경 실패 시 새로운 비밀번호 설정 페이지로
				}
			} else {
				// 새 비밀번호와 비밀번호 확인이 일치하지 않을 경우 처리
				model.addAttribute("errorMessage", "새로운 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
				return "login/createNewPwd"; // 변경 실패 시 새로운 비밀번호 설정 페이지로
			}
		}
		return "login/createNewPwd"; // 변경 실패 시 새로운 비밀번호 설정 페이지로
	}
}
