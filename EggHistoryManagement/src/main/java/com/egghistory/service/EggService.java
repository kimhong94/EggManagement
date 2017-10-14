package com.egghistory.service;

import java.util.List;

import com.egghistory.domain.EggVO;

public interface EggService {

	public void registerEgg(EggVO evo) throws Exception;
	
	public List<EggVO> listEggsByPid(String pid) throws Exception;
	
	public EggVO getEggInfo(int eid) throws Exception;

	public List<EggVO> listEggsGroupByForSell(String pid) throws Exception;

}
