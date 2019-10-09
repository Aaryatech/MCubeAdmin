package com.ats.mcube.controller;
 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 

public class MasterController {
	
	
	
	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public ModelAndView communicationForm(HttpServletRequest request, HttpServletResponse response) {
	 
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
	public ModelAndView customerList(HttpServletRequest request, HttpServletResponse response) {
	 
		HttpSession session = request.getSession();
		ModelAndView mav = null;
		
		 
		try {
			mav = new ModelAndView("Master/customerList");
	 
	 
		} catch (Exception e) {
			System.err.println("Exce in communication " + e.getMessage());
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public ModelAndView userList(HttpServletRequest request, HttpServletResponse response) {
	 
		HttpSession session = request.getSession();
		ModelAndView mav = null;
		
		 
		try {
			mav = new ModelAndView("Master/userList");
	 
	 
		} catch (Exception e) {
			System.err.println("Exce in communication " + e.getMessage());
			e.printStackTrace();
		}
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

}
