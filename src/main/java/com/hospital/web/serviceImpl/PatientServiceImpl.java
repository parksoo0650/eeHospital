package com.hospital.web.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospital.web.dao.PatientDAO;
import com.hospital.web.domain.PatientDTO;
import com.hospital.web.service.PatientService;

@Service
public class PatientServiceImpl implements PatientService{
	
	@Autowired PatientServiceImpl PatientServiceImpl;
	@Autowired PatientDAO dao;
	    @Override
	    public PatientDTO findById(String id) throws Exception{
		return dao.selectById(id);
		//patientDAOImpl.getInstance().selectById(id);
	    }
	    @Override
	    public PatientDTO login(PatientDTO patient) throws Exception{
	    	PatientDTO pat = new PatientDTO();
			return pat;
		//session = findById(patient.getPatID());
		/*if(patient.getPatPass().equals(temp.getPatPass())){
		    flag=true;
		    session=temp;
		}*/
	
		//patientDAOImpl.getInstance().login(patient);
	    }

	    @Override
	    public int join(PatientDTO patient) throws Exception {
		return dao.insert(patient); 
		//patientDAOImpl.getInstance().insert(patient);
	    }
	    @Override
	    public int change(PatientDTO patient) throws Exception {
		return dao.update(patient); 
		//patientDAOImpl.getInstance().update(patient);
	    }

	    @Override
	    public int remove(PatientDTO patient) throws Exception {
		return dao.delete(patient); 
		//patientDAOImpl.getInstance().delete(patient);
	    }
	    @Override
	    public boolean logout(PatientDTO patient) throws Exception {
		return true;
	    }
	    @Override
	    public String getBirth() {
		String temp="";
	    	return temp;
	    }

}
