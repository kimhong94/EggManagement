package com.egghistory.service;

import com.egghistory.domain.DeliverEmployeeVO;
import com.egghistory.domain.UserVO;
import com.egghistory.dto.LoginDTO;

public interface UserService {
	
	public UserVO login(LoginDTO dto) throws Exception;

}
