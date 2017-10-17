package com.egghistory.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import com.egghistory.domain.EggVO;
import com.egghistory.persistence.EggDAO;


@Service
public class EggServiceImpl implements EggService {

	@Inject
	EggDAO eggdao;
	
	
	@Override
	public void registerEgg(EggVO evo) throws Exception {
		
		eggdao.registerEgg(evo);
	}


	@Override
	public List<EggVO> listEggsByPid(String pid) throws Exception {
		return eggdao.listEggsByPid(pid);
	}


	@Override
	public EggVO getEggInfo(int eid) throws Exception {
		return eggdao.getEggInfo(eid);
	}


	@Override
	public List<EggVO> listEggsGroupByForSell(String pid) throws Exception {
		return eggdao.listEggsGroupByForSell(pid);
	}


	@Override
	public List<EggVO> listEggsGroupBy(String pid) throws Exception {
		return eggdao.listEggsGroupBy(pid);
	}


	@Override
	public List<EggVO> listEggsByEbirth(Timestamp ebirth) throws Exception {
		return eggdao.listEggsByEbirth(ebirth);
	}

}
