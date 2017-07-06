package com.sap.hcm.cloud.controller;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SimpleController {
	
	@RequestMapping("/")
	@ResponseBody
	public String home(){
		return "hello world";
	}
}
