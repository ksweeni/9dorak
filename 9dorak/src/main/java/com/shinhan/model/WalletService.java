package com.shinhan.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shinhan.dto.BasketVO;

@Service
public class WalletService {

	@Autowired
	WalletDAOMybatis dao;

	public List<BasketVO> selectAll() {
		return dao.selectAll();
	}
}
