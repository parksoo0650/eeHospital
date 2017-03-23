package com.hospital.web.domain;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Data
public class ArticleDTO {
	  @Setter @Getter
	    private String seq,id,title,content,regdate,readCount;
}
