package com.egghistory.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.egghistory.domain.UserVO;
import com.egghistory.dto.LoginDTO;
import com.egghistory.service.UserService;


@Controller
public class UserController {
	
	
	@Inject
	private UserService us;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET(Locale locale, Model model) {
		
		
		return "login";  //login.jsp
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, Model model) throws Exception {
		
		// 로그아웃
		if(dto == null)
			return;
		
		
		// 1. 아이디와 패스워드를 받아온다.
		// 2. 생산자, 유통자, 소비자? 테이블에서 해당되는 정보를 가져온다.
		UserVO uvo = us.login(dto);
		
		if(uvo == null)
			return;
		
		// 3. 생산자면 생산 페이지, 유통자면 유통, 소비자면 소비자 페이지
		// 인터셉터로 처리
		
		model.addAttribute("userVO", uvo);
	}

	
	/**
	 * Test Controller
	 * Producer는  producer Controller
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/producer", method = RequestMethod.GET)
	public String producerPage(Locale locale, Model model) {
		
		
		return "producer";  //login.jsp
	}
	@RequestMapping(value = "/producer/registeregg", method = RequestMethod.GET)
	public String registerEgg(Locale locale, Model model) {
		
		
		return "registeregg";  //login.jsp
	}

}
