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
		Map<String, String> paramMap = new HashMap<>();
        paramMap.put("mem_id", mem_id);
        paramMap.put("mem_pw", mem_pw);
  
        MemVO memvo = sqlSession.selectOne(NAMESPACE + "login", paramMap);

        if (memvo != null) {
            logger.info("로그인 성공: " + mem_id);
        } else {
            logger.info("로그인 실패: " + mem_id);
        }
        return memvo;	
	}
	  
}
