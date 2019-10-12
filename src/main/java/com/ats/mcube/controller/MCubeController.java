package com.ats.mcube.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			HttpSession session = request.getSession();
			System.out.println("Ses------"+session.getAttribute("msg"));
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
	
	@RequestMapping(value = "/changePasswordProcess", method=RequestMethod.POST)
	public String changePasswordProcess(HttpServletRequest request, HttpServletResponse response, Model model) {
		String mav = "redirect:/";
		try {
			HttpSession session = request.getSession();
			//session.setAttribute("msg", "Password Changed Sucessfully");
			
		}catch (Exception e) {
			System.err.println("Exception in changePasswordProcess:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/changeUserPassword", method=RequestMethod.GET)
	public String changeUserPassword(HttpServletRequest request, HttpServletResponse response, Model model) {
		String mav = "changeUserPassword";
		try {
			
			/*HttpSession session = request.getSession();
			session.setAttribute("successMsg", "Password Changed Sucessfully");*/
			model.addAttribute("msg", "Password Changed Sucessfully");
		}catch (Exception e) {
			System.err.println("Exception in changeUserPassword:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
	
	
	@RequestMapping(value = "/updateUserNewPassword", method=RequestMethod.POST)
	public String updateUserNewPassword(HttpServletRequest request, HttpServletResponse response, Model model) {
		String mav = "redirect:/changeUserPassword";
		try {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "Password Changed Sucessfully");
			
		}catch (Exception e) {
			System.err.println("Exception in updateUserNewPassword:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
	
	
	/********************************Line Item Code Request**************************************/
	
	@RequestMapping(value = "/showLineItemCodeReqList", method=RequestMethod.GET)
	public String showLineItemCodeReqList(HttpServletRequest request, HttpServletResponse response, Model model) {
		String mav = "Master/lineItemCodeReqList";
		try {
			
			
		}catch (Exception e) {
			System.err.println("Exception in showLineItemCodeReqList:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/showDeclineItemCodeReqList", method=RequestMethod.GET)
	public String showDiclineItemCodeReqList(HttpServletRequest request, HttpServletResponse response, Model model) {
		String mav = "Master/declineItemCodeReqList";
		try {
			
			
		}catch (Exception e) {
			System.err.println("Exception in showDiclineItemCodeReqList:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/showDocumentList", method=RequestMethod.GET)
	public String showDocumentList(HttpServletRequest request, HttpServletResponse response, Model model) {
		String mav = "Master/documentList";
		try {
			
			
		}catch (Exception e) {
			System.err.println("Exception in showDiclineItemCodeReqList:"+e.getMessage());
			e.printStackTrace();
		}
		
		return mav;
	}
}
