package com.sap.hcm.cloud.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/climax")
public class ClimaxController {
	
	private static Logger logger = LoggerFactory.getLogger(ClimaxController.class.getName());
	
	@RequestMapping("/homepage")
	public String homePage(){
		logger.info("enter into home page");
		return "climax/homepage";
	}

}
