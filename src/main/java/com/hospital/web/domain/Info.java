package com.hospital.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data @Component
public abstract class Info { //공통된 속성을 나 뺀다
		protected String id,pass,name,gen,phone,email;
		public abstract String getGroup();
}
