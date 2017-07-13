package com.sap.hcm.cloud.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sap.hcm.cloud.bean.CaptchaBean;
import com.sap.hcm.cloud.bean.UserLoginBean;
import com.sap.hcm.cloud.entity.UserInfo;
import com.sap.hcm.cloud.service.ImageCaptchaService;
import com.sap.hcm.cloud.service.UserInfoService;

@Controller
@RequestMapping("/prelude")
public class PreludeController {

	@Autowired
	UserInfoService userInfoService;

	@Autowired
	ImageCaptchaService imageCaptchaService;

	public static Logger logger = LoggerFactory.getLogger(PreludeController.class);
	
	private static ObjectMapper objectMapper = new ObjectMapper();  

//	Gson gson = new Gson();

	@RequestMapping(value = "/login")
	public String Login() {
		logger.info("enter into login page");
		return "prelude/login";
	}

	@RequestMapping(value = "/register")
	public String Register() {
		logger.info("enter into register page");
		return "prelude/register";
	}

	@RequestMapping(value = "/verifyLogin", method = RequestMethod.POST)
	public @ResponseBody String verifyUserLogin(HttpServletRequest request, @RequestBody UserLoginBean userLogin) throws JsonProcessingException {

		Map<String, Object> result = new HashMap<String, Object>();

		String userId = userLogin.getUserId();
		UserInfo userInfo = userInfoService.getUserInfoById(userId);

		if (userInfo != null) {
			if (!userLogin.getPassword().equals(userInfo.getPassword())) {
				result.put("pwdMsg", "用户名密码错误");
			}
			result.put("user", userLogin);
			HttpSession session = request.getSession();
			session.setAttribute("UserLogin", userLogin);
		} else {
			result.put("accountMsg", "用户名不存在");
		}
//		String resultJson = gson.toJson(result);
		String resultJson = objectMapper.writeValueAsString(result);
		return resultJson;
	}

	@RequestMapping(value = "/saveRegisterInfo", method = RequestMethod.POST)
	public @ResponseBody UserInfo getUserRegisterInfo(HttpServletRequest request, @RequestBody UserInfo userInfo) {
		return userInfoService.saveUserInfo(userInfo);
	}

	@RequestMapping(value = "/getCaptcha", method = RequestMethod.GET)
	public void getCaptcha(HttpServletRequest request, HttpServletResponse response) throws IOException {
		imageCaptchaService.getImage(request, response);
	}

	@RequestMapping(value = "/varifyCaptcha", method = RequestMethod.POST)
	public @ResponseBody String verifyCaptcha(HttpServletRequest request, @RequestBody CaptchaBean captcha) throws JsonProcessingException {
		String sRand = imageCaptchaService.getsRand();
		Map<String, String> result = new HashMap<String, String>();
		if (captcha.getCaptcha().equals(sRand)) {
			result.put("resultMsg", "success");
		} else {
			result.put("resultMsg", "error");
		}
		String resultJson = objectMapper.writeValueAsString(result);

		return resultJson;
	}

}
