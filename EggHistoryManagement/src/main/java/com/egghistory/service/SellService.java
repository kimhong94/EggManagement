package com.egghistory.service;

import java.util.List;

import com.egghistory.domain.SellVO;

public interface SellService {

	public void createSellInfoAndUpdateEggs(SellVO sellvo) throws Exception;

	public List<SellVO> listSellInfoByPid(String pid) throws Exception;

	public SellVO getSellInfoBySID(String sid) throws Exception;

}
