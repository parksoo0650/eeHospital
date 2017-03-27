package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hospital.web.domain.PatientDTO;
import com.hospital.web.service.PatientService;

@Controller
@RequestMapping(value="/patient")
public class PatientController {
	private static final Logger logger = LoggerFactory.getLogger(PatientController.class);
	@Autowired PatientService service; //서비스 호출 
	@Autowired PatientDTO patient;
 	@RequestMapping("/join") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String goJoin(){
		logger.info("PatientController - goJoin() {} !!", "ENTER");
		return "public:patient/registerForm";
	}
	@RequestMapping("/login") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String goLogin(){
		logger.info("PatientController - goLogin() {} !!", "ENTER");
		return "public:common/loginForm";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST) //컨텍스트 한번 흩고 context 가서 wire한다.
	public String goLogin(@RequestParam("id") String id ,
			@RequestParam("password") String password
			,Model model) throws Exception{ //이미 존재하는 것이기 때문에 
		logger.info("PatientController - goLogin() {} !!", "POST");
		logger.info("PatientController - id, pw: {}", id+","+password);
		patient.setPatID(id);
		patient.setPatPass(password);
		patient=service.login(patient);
		logger.info("DB 다녀온 결과 : {}", patient.getPatID()+","+patient.getPatPass());
		model.addAttribute("name", "홍길동");
		return "patient:patient/containerDetail";
	}
	@RequestMapping("/doctor/{docID}") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String getDoctorInfo(@PathVariable String docID){
		logger.info("PatientController - getDoctorInfo() {} !!", "ENTER");
		logger.info("PatientController - docID={} !!", docID);
		return "patient:patient/doctorInfo";
	}
}
