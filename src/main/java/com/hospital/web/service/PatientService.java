package com.hospital.web.service;

import org.springframework.stereotype.Component;
import com.hospital.web.domain.PatientDTO;

@Component
public interface PatientService {
	 public int join(PatientDTO member)throws Exception;
	    public PatientDTO findById(String id)throws Exception;
	    public PatientDTO login(PatientDTO member)throws Exception;
	    public boolean logout(PatientDTO member)throws Exception;
	    public int change(PatientDTO member)throws Exception;
	    public int remove(PatientDTO member)throws Exception; //비밀번호 노출,공개키
	    public String getBirth();
}
