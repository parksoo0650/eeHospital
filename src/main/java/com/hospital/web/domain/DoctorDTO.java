package com.hospital.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class DoctorDTO {
	@Setter @Getter
    private String docID, docPass, majorTreat, docName, docGen, docPhone, docEmail, docPosition;
}
