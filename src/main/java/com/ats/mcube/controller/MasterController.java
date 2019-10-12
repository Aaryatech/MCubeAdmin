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

		 
 			ModelAndView mav = new ModelAndView("Master/userList");
	 
	 
	 
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
	

	@RequestMapping(value = "/showEditUser", method = RequestMethod.GET)
	public ModelAndView showEditUser(HttpServletRequest request, HttpServletResponse response) {
	 
		HttpSession session = request.getSession();
		ModelAndView mav = null;
		 
		try {
			mav = new ModelAndView("editUserProf");
	 
	 
		} catch (Exception e) {
			System.err.println("Exce in communication " + e.getMessage());
			e.printStackTrace();
		}
		return mav;
	}

	

	@RequestMapping(value = "/submitInsertUserInfo", method = RequestMethod.GET)
	public ModelAndView submitInsertUserInfo(Locale locale, Model model,HttpSession session) {

		
		ModelAndView mav = new ModelAndView("Master/userList");
		 
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
	
	
	@RequestMapping(value = "/showAddTemplate", method = RequestMethod.GET)
	public ModelAndView v(Locale locale, Model model,HttpSession session) {

		 
 			ModelAndView mav = new ModelAndView("Master/addTemplate");
	 
	 
	 
		return mav;
	}
	
	@RequestMapping(value = "/showImpMasterCat", method = RequestMethod.GET)
	public ModelAndView showImpMasterCat(Locale locale, Model model,HttpSession session) {

		 
 			ModelAndView mav = new ModelAndView("Master/impMasterCategorization");
	 
	 
	 
		return mav;
	}
	 
	

	@RequestMapping(value = "/submitInsertTemp", method = RequestMethod.GET)
	public ModelAndView submitInsertTemp(Locale locale, Model model,HttpSession session) {

		
		ModelAndView mav = new ModelAndView("Master/addTemplate");
		 
		return mav;
	}
	
	
	@RequestMapping(value = "/submitInsertCust", method = RequestMethod.GET)
	public ModelAndView submitInsertCust(Locale locale, Model model,HttpSession session) {

		
		ModelAndView mav = new ModelAndView("Master/customerList");
		 
		return mav;
	}
	
	
	@RequestMapping(value = "/submitInsertCatMast", method = RequestMethod.GET)
	public ModelAndView submitInsertCatMast(Locale locale, Model model,HttpSession session) {

		
		ModelAndView mav = new ModelAndView("Master/impMasterCategorization");
		 
		return mav;
	}
	
	
	@RequestMapping(value = "/showIncomingReqList", method = RequestMethod.GET)
	public ModelAndView showIncomingReqList(Locale locale, Model model,HttpSession session) {

		 
 			ModelAndView mav = new ModelAndView("Master/incomingReqList");
	 
	 
	 
		return mav;
	}
	
	@RequestMapping(value = "/showOCRoutputvalidation", method = RequestMethod.GET)
	public ModelAndView showOCRoutputvalidation(Locale locale, Model model,HttpSession session) {

		 
 			ModelAndView mav = new ModelAndView("Master/OCRoutputvalidation");
	  
		return mav;
	}
	
	
	@RequestMapping(value = "/showExcelToexcel", method = RequestMethod.GET)
	public ModelAndView showExcelToexcel(Locale locale, Model model,HttpSession session) {

		 
 			ModelAndView mav = new ModelAndView("Master/exceltoexcel");
	  
		return mav;
	}
	
	
	

	@RequestMapping(value = "/showOCR", method = RequestMethod.GET)
	public ModelAndView showOCR(Locale locale, Model model,HttpSession session) {

		 
 			ModelAndView mav = new ModelAndView("Master/ocr");
	  
		return mav;
	}
	
	
	
}
