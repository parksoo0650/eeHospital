package com.hospital.web.imapper;

import org.springframework.stereotype.Component;

import com.hospital.web.domain.PatientDTO;
@Component
public interface IPatientMapper {
	public int insert(PatientDTO member) throws Exception;
    public PatientDTO selectById(String id) throws Exception;
    public int update(PatientDTO member) throws Exception;
    public int delete(PatientDTO member) throws Exception; 
}
