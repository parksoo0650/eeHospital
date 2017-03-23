package com.hospital.web.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hospital.web.dao.PatientDAO;
import com.hospital.web.domain.PatientDTO;
@Repository
public class PatientDAOImpl implements PatientDAO{
	@Autowired PatientDAO dao;
	@Autowired PatientDAOImpl PatientDAOImpl;
	@Override
	public int insert(PatientDTO member) throws Exception {
		String sql = String.format("INSERT INTO Patient(pat_id,pat_pass,pat_name,pat_gen," +
	              "pat_jumin,pat_phone,pat_email,pat_addr,pat_job VALUES (%s,%s)", "");
		return 0;
	}

	@Override
	public PatientDTO selectById(String id) throws Exception {
		PatientDTO dto = new PatientDTO();
		String sql="SELECT pat_id,doc_id,nur_id,pat_pass,pat_name,pat_gen," 
			    +"pat_jumin,pat_phone,pat_email,pat_addr,pat_job FROM Patient where pat_id='"+id+"'";
		return dto;
	}

	@Override
	public int update(PatientDTO member) throws Exception {
		int count=0;
		String sql=String.format("%s", "");
		return count;
	}

	@Override
	public int delete(PatientDTO member) throws Exception {
		int count=0;
		String sql=String.format("%s", "");
		return count;
	}

}
