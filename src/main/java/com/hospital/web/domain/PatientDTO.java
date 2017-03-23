package com.hospital.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class PatientDTO {//Type정의는 Component로 한다.
	@Setter @Getter
    private String patID, docID, nurID,patPass, patName, patGen, patJumin,patPhone, patEmail, patAddr,patJob;
}
