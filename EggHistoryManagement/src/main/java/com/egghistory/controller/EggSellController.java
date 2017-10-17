package com.egghistory.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.egghistory.domain.EggVO;
import com.egghistory.domain.SellVO;
import com.egghistory.service.EggService;
import com.egghistory.service.SellService;

@Controller
public class EggSellController {
	
	@Inject
	EggService eggservice;
	
	@Inject
	SellService sellservice;
	
	@RequestMapping(value = "/producer/sellegg", method = RequestMethod.GET)
	public String sellingEggPage(Model model) {
		
		return "sellegg";
	}
	
	@ResponseBody
	@RequestMapping(value = "/producer/{pid}/sellegg/eggs", method = RequestMethod.GET)
	public ResponseEntity<List<EggVO>> listEggsGroupByForSell(@PathVariable("pid")String pid) {
		
		ResponseEntity<List<EggVO>> entity = null;
		
		try {
			
			List<EggVO> eggs =  eggservice.listEggsGroupByForSell(pid);
			entity = new ResponseEntity<List<EggVO>>(eggs ,HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<EggVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/producer/{pid}/sellegg", method = RequestMethod.POST)
	public ResponseEntity<String> createSellInfoAndUpdateEggs(@PathVariable("pid")String pid, @RequestBody SellVO sellvo) {
		
		ResponseEntity<String> entity = null;
		
		try {
			
			sellservice.createSellInfoAndUpdateEggs(sellvo);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value = "/producer/{pid}/sellegg", method = RequestMethod.GET)
	public ResponseEntity<List<SellVO>> listSellInfo(@PathVariable("pid")String pid) {
		
		ResponseEntity<List<SellVO>> entity = null;
		
		try {
			
			List<SellVO> sells = sellservice.listSellInfoByPid(pid);
			entity = new ResponseEntity<List<SellVO>>(sells,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<SellVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
