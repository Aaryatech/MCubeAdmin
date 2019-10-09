package com.ats.mcube;

import java.text.DateFormat;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
 
 
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * home(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * Date date = new Date(); DateFormat dateFormat =
	 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	 * 
	 * String formattedDate = dateFormat.format(date);
	 * 
	 * model.addAttribute("serverTime", formattedDate );
	 * 
	 * return "home"; }
	 */
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {

		// ModelAndView mav = new ModelAndView("login");

		ModelAndView mav = new ModelAndView("loginDemo");

		return mav;
	}
	
	

	@RequestMapping(value = "/welcomePage", method = RequestMethod.GET)
	public ModelAndView welcomePage(Locale locale, Model model,HttpSession session) {

		
		ModelAndView mav = new ModelAndView("welcome");
		 

		return mav;
	}
	
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String loginProcess(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		String mav = null;
		try {
 
				mav = "welcome";
			 
		} catch (Exception e) {
			mav = "loginDemo";
			System.err.println("Exception in Login Process  " + e.getMessage());
			e.printStackTrace();

		}

		return mav;
	}

	
}
