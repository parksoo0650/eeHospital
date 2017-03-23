package com.hospital.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class NurseDTO {
	@Setter @Getter
    private String nurId, nurPass,majorJob, nurName, nurGen, nurPhone, nurEmail, nurPosition;
}

