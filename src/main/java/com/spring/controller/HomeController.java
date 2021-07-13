package com.spring.controller;

import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j2;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j2
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		log.info("Welcome home! The client locale is {}.", locale);
		

		return "index";
	}
	
	@GetMapping("/community")
	public String community() {
		log.info("community page");
		
		return "community";
	}
	
	@GetMapping("/food")
	public String foodGet() {
		log.info("food page");
		
		return "food";
	}
	
	@GetMapping("/foodlist")
	public String foodlistGet() {
		log.info("foodlist page");
		
		return "foodlist";
	}
	
	@GetMapping("/subway")
	public String subwayGet() {
		log.info("subway page");
		
		return "/subway/subway";
	}
	
	@GetMapping("/review")
	public String reviewGet() {
		log.info("foodlist page");
		
		return "review";
	}
	
	
}
