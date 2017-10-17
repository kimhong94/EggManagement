package com.egghistory.persistence;

import java.util.List;

import com.egghistory.domain.SellVO;

public interface SellDAO {

	public void createSellInfo(SellVO sellvo) throws Exception;

	public List<SellVO> listSellInfoByPid(String pid) throws Exception;

	
}
