package com.egghistory.service;

import java.sql.Timestamp;
import java.util.List;

import com.egghistory.domain.EggVO;

public interface EggService {

	public void registerEgg(EggVO evo) throws Exception;
	
	public List<EggVO> listEggsByPid(String pid) throws Exception;
	
	public EggVO getEggInfo(int eid) throws Exception;

	public List<EggVO> listEggsGroupByForSell(String pid) throws Exception;

	public List<EggVO> listEggsGroupBy(String pid) throws Exception;

	public List<EggVO> listEggsByEbirth(Timestamp ebirth) throws Exception;

}
