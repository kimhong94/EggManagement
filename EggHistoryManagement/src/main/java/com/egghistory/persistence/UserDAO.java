package com.egghistory.persistence;

import com.egghistory.domain.DeliverEmployeeVO;
import com.egghistory.domain.DeliverVO;
import com.egghistory.domain.ProducerVO;
import com.egghistory.domain.UserVO;
import com.egghistory.dto.LoginDTO;

public interface UserDAO {


	public ProducerVO loginProducer(LoginDTO dto) throws Exception;

	public DeliverVO loginDeliver(LoginDTO dto) throws Exception;


}
