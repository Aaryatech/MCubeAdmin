package com.ats.mcube.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Scope("session")
public class MCubeController {
	
	@RequestMapping(value = "/showForgotPass", method=RequestMethod.GET)
	public String showForgotPass(HttpServletRequest request, HttpServletResponse response, Model model) {
		String  mav = "forgetPassword";
		try {
			
		}catch (Exception e) {
			System.err.println("Exception in showForgotPass:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
	
	
	@RequestMapping(value = "/toChangePassword", method=RequestMethod.POST)
	public String toChangePassword(HttpServletRequest request, HttpServletResponse response, Model model) {
		String  mav = "changePassword";
		try {
			
			
		}catch (Exception e) {
			System.err.println("Exception in toChangePassword:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
}
