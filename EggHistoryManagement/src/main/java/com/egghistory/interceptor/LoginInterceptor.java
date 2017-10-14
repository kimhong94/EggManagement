package com.egghistory.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.egghistory.domain.UserVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO");
		if (userVO != null) {
			String dest = "";
			
			logger.info("new login success");
			session.setAttribute(LOGIN, userVO);
			
			UserVO uvo = (UserVO)userVO;
			
			
			// 유통자면 유통자 페이지, 관리자면 관리자 페이지
			if(uvo.getProducerVO() != null)
				dest = "/producer";
			
			if(uvo.getDeliverVO() != null)
				dest = "/deliver";

			// 로그인 성공 후 보내는 페이지
			response.sendRedirect(dest);
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(LOGIN) != null) {
			logger.info("clear login data before");
			session.removeAttribute(LOGIN);
		}

		return true;
	}
}
