package com.shinhan.model;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.MemVO;

@Repository
public class LoginDAOMybatis {

	@Autowired
	SqlSession sqlSession;
	Logger logger = LoggerFactory.getLogger(LoginDAOMybatis.class);
	String NAMESPACE = "net.firstzone.login.";

	public MemVO login(String mem_id, String mem_pw) {
		Map<String, String> memlogin = new HashMap<>();
		memlogin.put("mem_id", mem_id);
		memlogin.put("mem_pw", mem_pw);

		return sqlSession.selectOne(NAMESPACE + "login", memlogin);
	}

	public MemVO findId(String mem_name, String mem_phone, String mem_bd) {
		Map<String, String> findIdParams = new HashMap<>();
		findIdParams.put("mem_name", mem_name);
		findIdParams.put("mem_phone", mem_phone);
		findIdParams.put("mem_bd", mem_bd);

		return sqlSession.selectOne(NAMESPACE + "findId", findIdParams);
	}

	public MemVO findPwd(String mem_id, String mem_name, String mem_phone) {
		Map<String, String> findPwdParams = new HashMap<>();
		findPwdParams.put("mem_id", mem_id);
		findPwdParams.put("mem_name", mem_name);
		findPwdParams.put("mem_phone", mem_phone);

		return sqlSession.selectOne(NAMESPACE + "findPwd", findPwdParams);
	}
	public void updatePwd(String mem_id, String new_pw) {
        Map<String, String> updatePwdParams = new HashMap<>();
        updatePwdParams.put("mem_id", mem_id);
        updatePwdParams.put("new_pw", new_pw);

        sqlSession.update(NAMESPACE + "updatePwd", updatePwdParams);
    }
	
	public MemVO kakaoConnectionCheck(Map<String, Object> paramMap) {
        return sqlSession.selectOne(NAMESPACE + "kakaoConnectionCheck", paramMap);
    }

    public MemVO userKakaoLoginPro(Map<String, Object> paramMap) {
        return sqlSession.selectOne(NAMESPACE + "userKakaoLoginPro", paramMap);
    }

}
