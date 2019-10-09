package com.ats.mcube.controller;
 

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
@Scope("session")
public class MasterController {
	
	
	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public ModelAndView userList(Locale locale, Model model,HttpSession session) {

		 
 			ModelAndView mav = new ModelAndView("Master1/userList");
	 
	 
	 
		return mav;
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response) {
	 
		HttpSession session = request.getSession();
		ModelAndView mav = null;
		 
		try {
			mav = new ModelAndView("Master/addUser");
	 
	 
		} catch (Exception e) {
			System.err.println("Exce in communication " + e.getMessage());
			e.printStackTrace();
		}
		return mav;
	}

	
	
	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public ModelAndView addCustomer(HttpServletRequest request, HttpServletResponse response) {
	 
		HttpSession session = request.getSession();
		ModelAndView mav = null;
		
		 
		try {
			mav = new ModelAndView("Master/addCustomer");
	 
	 
		} catch (Exception e) {
			System.err.println("Exce in communication " + e.getMessage());
			e.printStackTrace();
		}
		return mav;
	}
	
	
	 

	@RequestMapping(value = "/customerList", method = RequestMethod.GET)
	public ModelAndView customerList(Locale locale, Model model,HttpSession session) {

		
		ModelAndView mav = new ModelAndView("Master/customerList");
		 
		return mav;
	}

	 
	
}
