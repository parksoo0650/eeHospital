package com.hospital.web.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import com.hospital.web.domain.ArticleDTO;

@Component
public interface BoardDAO {
	 	public int insert(ArticleDTO param) throws Exception;
	    public ArticleDTO selectBySeq(ArticleDTO param) throws Exception;
	    public List<ArticleDTO> selectByWord(String[] param) throws Exception;
	    public List<ArticleDTO> selectAll(int[] pageArr);
	    public int update(ArticleDTO param) throws Exception;
	    public int delete(ArticleDTO param) throws Exception;
	    public int count();
	
}
