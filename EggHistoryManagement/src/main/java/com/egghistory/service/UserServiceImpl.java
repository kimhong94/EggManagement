package com.egghistory.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.egghistory.domain.ProducerVO;
import com.egghistory.domain.UserVO;
import com.egghistory.dto.LoginDTO;
import com.egghistory.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	UserDAO udao;
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		UserVO uvo = null;
		
		// producer, 유통자, 소비자 테이블에서 아이디와 패스워드를 검색해본다.
		ProducerVO pvo = udao.loginProducer(dto);
		if(pvo != null){
			uvo = new UserVO();
			uvo.setProducerVO(pvo);
			uvo.setUserId(pvo.getPid());
			uvo.setUserPw(pvo.getPpw());
		}
		
		return uvo;
	}

}
