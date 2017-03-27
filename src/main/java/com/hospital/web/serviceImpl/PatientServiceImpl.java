package com.hospital.web.serviceImpl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospital.web.controller.PatientController;
import com.hospital.web.dao.PatientDAO;
import com.hospital.web.domain.PatientDTO;
import com.hospital.web.mapper.PatientMapper;
import com.hospital.web.service.PatientService;

@Service
public class PatientServiceImpl implements PatientService{
	private static final Logger logger = LoggerFactory.getLogger(PatientServiceImpl.class);
	@Autowired PatientMapper mapper;;
	@Autowired PatientDAO session;
	    @Override
	    public PatientDTO findById(String id) throws Exception{
	    	logger.info("PatientController - findById() {} !!", "ENTER");
	    	return null;
		//patientDAOImpl.getInstance().selectById(id);
	    }
	    @Override
	    public PatientDTO login(PatientDTO patient) throws Exception{
	    	logger.info("PatientController - login() {} !!", "ENTER");
			return mapper.selectById(patient.getPatID());
	    }

	    @Override
	    public int join(PatientDTO patient) throws Exception {
	    	logger.info("PatientController - join() {} !!", "ENTER");
	    	return 0;
	    }
	    @Override
	    public int change(PatientDTO patient) throws Exception {
	    	logger.info("PatientController - change() {} !!", "ENTER");
		return 0; 
		//patientDAOImpl.getInstance().update(patient);
	    }

	    @Override
	    public int remove(PatientDTO patient) throws Exception {
	    	logger.info("PatientController - remove() {} !!", "ENTER");
		return 0;
		//patientDAOImpl.getInstance().delete(patient);
	    }
	    @Override
	    public boolean logout(PatientDTO patient) throws Exception {
	    	logger.info("PatientController - logout() {} !!", "ENTER");
		return true;
	    }
	    @Override
	    public String getBirth() {
	    	logger.info("PatientController - getBirth() {} !!", "ENTER");
		String temp="";
	    	return temp;
	    }

}
