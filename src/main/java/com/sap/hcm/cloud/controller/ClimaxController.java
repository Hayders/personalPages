package com.sap.hcm.cloud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/climax")
public class ClimaxController {
	
	private static Logger logger = LoggerFactory.getLogger(ClimaxController.class.getName());
	
	@RequestMapping("/homepage")
	public String homePage(){
		logger.info("enter into home page");
		return "climax/homepage";
	}
	
	@RequestMapping(value = "/getHttpSessionObj", method = RequestMethod.GET)
	public @ResponseBody Object getHttpSession(HttpServletRequest request){
		HttpSession session = request.getSession();
		Object sessionObj = session.getAttribute("UserLogin");
		return sessionObj;
	}
	
	@RequestMapping(value = "/clearHttpSession", method = RequestMethod.GET)
	public void clearHttpSession(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
	}

}
