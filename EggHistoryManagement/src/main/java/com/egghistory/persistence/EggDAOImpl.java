package com.egghistory.persistence;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.egghistory.domain.EggVO;
import com.egghistory.domain.SellVO;
import com.egghistory.service.EggService;

@Repository
public class EggDAOImpl implements EggDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.egghistory.mapper.eggMapper";
	
	@Override
	public void registerEgg(EggVO evo) throws Exception {
		
		session.insert(namespace+".registerEgg", evo);
		
	}

	@Override
	public List<EggVO> listEggsByPid(String pid) throws Exception {
		
		return session.selectList(namespace+".listEggsByPid", pid);
	}

	@Override
	public EggVO getEggInfo(int eid) throws Exception {
		return session.selectOne(namespace+".getEggInfo", eid);
	}

	@Override
	public List<EggVO> listEggsGroupByForSell(String pid) throws Exception {
		return session.selectList(namespace+".listEggsGroupByForSell" , pid);
	}

	@Override
	public void updateEggsForSell(SellVO sellvo) throws Exception {
		
		List<EggVO> eggs = sellvo.getEggs();
		int sid = sellvo.getSid();
		
		for(EggVO egg : eggs){
			egg.setSid(sid);
			session.update(namespace+".updateEggsForSell", egg);
		}
	}

	@Override
	public List<EggVO> listEggsGroupBy(String pid) throws Exception {
		return session.selectList(namespace+".listEggsGroupBy", pid);
	}

	@Override
	public List<EggVO> listEggsByEbirth(Timestamp ebirth) throws Exception {
		return session.selectList(namespace+".listEggsByEbirth", ebirth);
	}

	@Override
	public List<EggVO> listEggsBySid(String sid) throws Exception {
		return session.selectList(namespace+".listEggsBySid", sid);
	}
	
	

}
