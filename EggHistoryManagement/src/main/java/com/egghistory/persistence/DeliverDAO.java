package com.egghistory.persistence;

import java.util.List;

import com.egghistory.domain.DeliverEmployeeVO;
import com.egghistory.domain.DeliverVO;

public interface DeliverDAO {
	
	public void registerDeliverEmployee(DeliverEmployeeVO evo) throws Exception;

	public List<DeliverEmployeeVO> listDeliverEmployeesByDeliverId(String deliverid) throws Exception;

	public DeliverEmployeeVO getDeliverEmployeeInfoByUUID(String uuid) throws Exception;

	public DeliverVO getDeliverByDeliverId(String deliverid) throws Exception;
	

}
