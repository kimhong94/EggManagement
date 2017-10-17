package com.egghistory.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.egghistory.domain.SellVO;
import com.egghistory.persistence.EggDAO;
import com.egghistory.persistence.SellDAO;

@Service
public class SellServiceImpl implements SellService{

	@Inject
	SellDAO selldao;
	
	@Inject
	EggDAO eggdao;
	
	@Override
	@Transactional
	public void createSellInfoAndUpdateEggs(SellVO sellvo) throws Exception {
		
		selldao.createSellInfo(sellvo);
		eggdao.updateEggsForSell(sellvo);
		
	}

	@Override
	public List<SellVO> listSellInfoByPid(String pid) throws Exception {
		return selldao.listSellInfoByPid(pid);
	}
	

}
