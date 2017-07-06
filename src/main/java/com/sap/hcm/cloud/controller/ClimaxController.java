package com.sap.hcm.cloud.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping("/climax")
public class ClimaxController {
	
	private static Logger logger = LoggerFactory.getLogger(PreludeController.class.getName());
	
	@RequestMapping("/homePage")
	public void homePage(){
		logger.info("enter into home page");
	}

}
