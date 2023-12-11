package com.shinhan.model;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.MemVO;

@Service
public class LoginService {

	@Autowired
	LoginDAOMybatis dao;

	public MemVO login(String mem_id, String mem_pw) {
		return dao.login(mem_id, mem_pw);
	}

	public MemVO findId(String mem_name, String mem_phone, String mem_bd) {
		return dao.findId(mem_name, mem_phone, mem_bd);
	}

	public MemVO findPwd(String mem_id, String mem_name, String mem_phone) {
		return dao.findPwd(mem_id, mem_name, mem_phone);
	}

	public void updatePwd(String mem_id, String new_pw) {
		dao.updatePwd(mem_id, new_pw);
	}
	
	public MemVO kakaoConnectionCheck(Map<String, Object> paramMap) {
        return dao.kakaoConnectionCheck(paramMap);
    }

    public MemVO userKakaoLoginPro(Map<String, Object> paramMap) {
        return dao.userKakaoLoginPro(paramMap);
    }
}


