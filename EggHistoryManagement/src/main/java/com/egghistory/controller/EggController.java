package com.egghistory.controller;

import java.sql.Timestamp;
import java.text.DateFormat;

import java.util.Date;
import java.util.List;
import java.util.Locale;

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
import org.springframework.web.multipart.MultipartFile;

import com.egghistory.domain.EggVO;
import com.egghistory.domain.UserVO;
import com.egghistory.dto.LoginDTO;
import com.egghistory.service.EggService;
import com.egghistory.service.UserService;

@Controller
public class EggController {
	
	
	@Inject
	private EggService es;
	
	
	@RequestMapping(value = "/eggs/{eid}", method = RequestMethod.GET)
	public String home(@PathVariable("eid")int eid, Model model) throws Exception {
		
		EggVO evo = es.getEggInfo(eid);
		
		model.addAttribute("egg", evo);
		return "viewEgg";
	}
	
	@ResponseBody
	@RequestMapping(value="/eggs/sellegg/{sid}", method=RequestMethod.GET)
	public ResponseEntity<List<EggVO>> listEggsGroupBySID(@PathVariable("sid")String sid) throws Exception{
		// 배송페이지에서 사용 sid별로 계란을 묶어서 표시한다.
		ResponseEntity<List<EggVO>> entity = null;
		
		try {
			List<EggVO> eggs = es.listEggsBySid(sid);
			entity = new ResponseEntity<List<EggVO>>(eggs, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<EggVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/eggs", method=RequestMethod.POST)
	public ResponseEntity<String> registerEgg(@RequestBody EggVO evo) throws Exception{
		
		ResponseEntity<String> entity = null;
		System.out.println(evo.toString());
		
		int eggCount = evo.getEcount();
		try {
			for(int i = 0 ; i < eggCount ; i++){
				es.registerEgg(evo);
			}
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/producer/{pid}/eggs", method=RequestMethod.GET)
	public ResponseEntity<List<EggVO>> listEggsByPid(@PathVariable("pid")String pid) throws Exception{
		
		ResponseEntity<List<EggVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<EggVO>>(es.listEggsByPid(pid) , HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<EggVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/producer/{pid}/myegg/eggs", method=RequestMethod.GET)
	public ResponseEntity<List<EggVO>> listEggsGroupBy(@PathVariable("pid")String pid) throws Exception{
		
		ResponseEntity<List<EggVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<EggVO>>(es.listEggsGroupBy(pid) , HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<EggVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/qrcode/eggs/{time}", method=RequestMethod.GET)
	public ResponseEntity<List<EggVO>> makeEggsQrGroupBy(@PathVariable("time")long time) throws Exception{
		// 
		System.out.println(time);
		Timestamp ebirth = new Timestamp(time);

		ResponseEntity<List<EggVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<EggVO>>(es.listEggsByEbirth(ebirth) , HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<EggVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/qrcode/{time}", method = RequestMethod.GET)
	public String qrcodePage(@PathVariable("time")long time, Model model) throws Exception {
		
		model.addAttribute("time", time);
		return "qrcode";
	}

}
