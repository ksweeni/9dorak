package com.shinhan.model;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.ChallengeVO;

@Service
public class ChallengeService {

	@Autowired
	ChallengeDAOMybatis dao;

	public List<ChallengeVO> selectAll() {
		return dao.selectAll();
	}

	public ChallengeVO selectByno(int challenge_no) {
		return dao.selectByno(challenge_no);
	}

	public int updateChall(ChallengeVO challenge) {
		return dao.updateChall(challenge);
	}

	public int insertChal(ChallengeVO challenge) {
		// TODO Auto-generated method stub
		return dao.insertChal(challenge);
	}

	public int getLike(int challenge_no) {
		// TODO Auto-generated method stub
		return dao.getLike(challenge_no);
	}

	public int deleteChal(int challenge_no) {
		// TODO Auto-generated method stub
		return dao.deleteChal(challenge_no);
	}
	
	
	public int selectBoardListCnt(ChallengeVO ChallengeVO) {
		// TODO Auto-generated method stub
		return dao.selectBoardListCnt(ChallengeVO);
	}

	public List<Map<String, Object>> list(ChallengeVO ChallengeVO) {
		// TODO Auto-generated method stub
		return dao.list(ChallengeVO);
	}

}
