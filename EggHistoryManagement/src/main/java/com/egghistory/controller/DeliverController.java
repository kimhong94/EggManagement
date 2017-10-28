package com.egghistory.controller;

import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.egghistory.domain.DeliverEmployeeVO;
import com.egghistory.domain.DeliverVO;
import com.egghistory.service.DeliverService;
import com.egghistory.service.UserService;

@Controller
public class DeliverController {
	
	@Inject
	DeliverService ds;
	
	// 배송 메인 페이지
	@RequestMapping(value = "/deliver", method = RequestMethod.GET)
	public String deliverPage(Locale locale, Model model) {
		
		return "/deliver/deliver";  //login.jsp
	}
	
	// 배송하기 페이지
	@RequestMapping(value = "/deliver/deliveegg", method = RequestMethod.GET)
	public String deliveEgg(Locale locale, Model model) {
		
		return "/deliver/deliveegg";  //login.jsp
	}
	
	// 자동 로그인 + 배송하기 페이지
	@RequestMapping(value = "/deliver/autologin/{uuid}", method = RequestMethod.GET)
	public String LoginAndDeliveEgg(HttpServletRequest request, 
			@PathVariable("uuid")String uuid, Model model) throws Exception {
		
		// # 인자로  did_uuid 를 받는다.
		
		//1. 배송사원 테이블 뒤지기
		DeliverEmployeeVO evo = ds.getDeliverEmployeeInfoByUUID(uuid);
		// 없으면 로그인페이지로
		if(evo == null)
			return "/login";
		//2. ok 되면 model에 배송업체, 배송사원정보 추가
		
		DeliverVO dvo = ds.getDeliverByDeliverId(evo.getDeliverid());
		
		model.addAttribute("deliverVO", dvo);
		model.addAttribute("deliver", evo);
		//3. 배송페이지로
		
		return "/deliver/deliveeggAUTO";  //login.jsp
	}
	
	
	// 배송사원 등록페이지
	@RequestMapping(value = "/deliver/registdeliver", method = RequestMethod.GET)
	public String registDeliverPage(Locale locale, Model model) {
		return "/deliver/registDeliver";  //login.jsp
	}
	
	// 배송사원 등록 - 자동로그인을 위해
	@ResponseBody
	@RequestMapping(value = "/deliver/registdeliver", method = RequestMethod.POST)
	public ResponseEntity<String> registDeliver(@RequestBody DeliverEmployeeVO evo, Model model) {
		
		ResponseEntity<String> entity = null;
		
		try {
			UUID uid = UUID.randomUUID();
			// 회사id_uuid
			String deliveruuid= evo.getDeliverid()+"_"+uid.toString();
			evo.setDeliveruuid(deliveruuid);

			ds.registerDeliverEmployee(evo);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value = "/deliver/{deliverid}/employees", method = RequestMethod.GET)
	public ResponseEntity<List<DeliverEmployeeVO>> listDeliverEmployees(@PathVariable("deliverid")String deliverid,
			Model model) {
		
		ResponseEntity<List<DeliverEmployeeVO>> entity = null;
		try {

			List<DeliverEmployeeVO> employees = ds.listDeliverEmployeesByDeliverId(deliverid);
			entity = new ResponseEntity<List<DeliverEmployeeVO>>(employees,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<DeliverEmployeeVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
