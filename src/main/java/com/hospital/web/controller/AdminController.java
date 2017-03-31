package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(PersonController.class);
	@RequestMapping("/login")
	public String goLogin(){
		logger.info("AdminController - goLogin() {} !!", "ENTER");
		return "public:common/loginForm";
	}
}
