package com.egghistory.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.egghistory.domain.SellVO;

@Repository
public class SellDAOImpl implements SellDAO {
	
	
	@Inject
	SqlSession session;
	
	private static String namespace = "com.egghistory.mapper.sellMapper";
	
	@Override
	public void createSellInfo(SellVO sellvo) throws Exception {
		
		session.insert(namespace+".createSellInfo", sellvo);
		System.out.println(sellvo);
	}

}
