package com.egghistory.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainpage(Locale locale, Model model) {
		
		return "/custom/MainMainMain";
	}
	@RequestMapping(value = "/EggInfo", method = RequestMethod.GET)
	public String custom_mainpage(Locale locale, Model model) {
		
		return "/custom/EggInfo";
	}
	@RequestMapping(value = "/CustomHelp", method = RequestMethod.GET)
	public String custom_help(Locale locale, Model model) {
		
		return "/custom/CustomHelp";
	}
	
	@RequestMapping(value = "/CustomMain", method = RequestMethod.GET)
	public String custom_info(Locale locale, Model model) {
		
		return "/custom/CustomMain";
	}
	@RequestMapping(value = "/MainBoard", method = RequestMethod.GET)
	public String custom_mainboard(Locale locale, Model model) {
		
		return "/custom/MainBoard";
	}

	@RequestMapping(value = "/process", method = RequestMethod.GET)
	public String processingPage(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "processingPage";
	}
	
	@RequestMapping(value = "/a", method = RequestMethod.GET)
	public String processing(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "anotherQr";
	}
	
}
