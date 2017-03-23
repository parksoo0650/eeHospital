package com.hospital.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class ChartDTO {
    @Setter @Getter
    private String chartID, treatID, docID, patID, nurID,chartContents;
}
