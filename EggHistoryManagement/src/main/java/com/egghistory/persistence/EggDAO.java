package com.egghistory.persistence;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.egghistory.domain.EggVO;
import com.egghistory.domain.SellVO;


public interface EggDAO {

	public void registerEgg(EggVO evo) throws Exception;
	
	public List<EggVO> listEggsByPid(String pid) throws Exception;

	public EggVO getEggInfo(int eid) throws Exception;

	public List<EggVO> listEggsGroupByForSell(String pid) throws Exception;

	public void updateEggsForSell(SellVO sellvo) throws Exception;

	public List<EggVO> listEggsGroupBy(String pid) throws Exception;

	public List<EggVO> listEggsByEbirth(Timestamp ebirth) throws Exception;

	public List<EggVO> listEggsBySid(String sid) throws Exception;
	
}
