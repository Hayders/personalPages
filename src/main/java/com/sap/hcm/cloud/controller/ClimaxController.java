package com.sap.hcm.cloud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sap.hcm.cloud.service.MoiveService;

@Controller
@RequestMapping("/climax")
public class ClimaxController {
	
	private static Logger logger = LoggerFactory.getLogger(ClimaxController.class.getName());
	
	private ObjectMapper objectMapper = new ObjectMapper();
	
	@Autowired
	MoiveService moiveService;
	
	@RequestMapping("/homepage")
	public String homePage(){
		logger.info("enter into home page");
		return "climax/homepage";
	}
	
	@RequestMapping("/moives")
	public String books(){
		logger.info("enter into moives page");
		return "climax/moives";
	}
	
	@RequestMapping(value = "/getRecentHotMoives",method = RequestMethod.GET)
	public @ResponseBody String getRecentHotMoives(HttpServletRequest request,HttpServletResponse response) throws JsonProcessingException{
		String moiveList = moiveService.getMoiveList(true);
		return objectMapper.writeValueAsString(moiveList);
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
