package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@RequestMapping("/list")
	public String goBoard(){
		logger.info("BoardController - goBoard() {} !!", "ENTER");
		return "public:board/containerList";
	}
	@RequestMapping("/find")
	public String find(@RequestParam(value="search",required=false)String search,
			@RequestParam(value="pageNo",defaultValue="1")String pageNo){
		logger.info("BoardController - goBoard() {} !!", "ENTER");
		
		return "public:board/containerList";
	}
}
