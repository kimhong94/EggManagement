package com.egghistory.persistence;

import com.egghistory.domain.ProducerVO;
import com.egghistory.domain.UserVO;
import com.egghistory.dto.LoginDTO;

public interface UserDAO {


	public ProducerVO loginProducer(LoginDTO dto) throws Exception;
	
	

}
