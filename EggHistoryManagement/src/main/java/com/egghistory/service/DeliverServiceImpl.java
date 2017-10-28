package com.egghistory.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.egghistory.domain.DeliverEmployeeVO;
import com.egghistory.domain.DeliverVO;
import com.egghistory.persistence.DeliverDAO;


@Service
public class DeliverServiceImpl implements DeliverService {

	@Inject
	DeliverDAO ddao;
	
	@Override
	public void registerDeliverEmployee(DeliverEmployeeVO evo) throws Exception {
		ddao.registerDeliverEmployee(evo);
	}

	@Override
	public List<DeliverEmployeeVO> listDeliverEmployeesByDeliverId(String deliverid) throws Exception {
		return ddao.listDeliverEmployeesByDeliverId(deliverid);
	}

	@Override
	public DeliverEmployeeVO getDeliverEmployeeInfoByUUID(String uuid) throws Exception {
		return ddao.getDeliverEmployeeInfoByUUID(uuid);
	}

	@Override
	public DeliverVO getDeliverByDeliverId(String deliverid) throws Exception {
		return ddao.getDeliverByDeliverId(deliverid);
	}

}
