package com.egghistory.persistence;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.egghistory.domain.DeliverVO;
import com.egghistory.domain.ProducerVO;
import com.egghistory.domain.UserVO;
import com.egghistory.dto.LoginDTO;


@Repository
public class UserDAOImpl implements UserDAO {
	

	@Inject
	private SqlSession session;

	private static String namespace = "com.egghistory.mapper.UserMapper";

	
	@Override
	public ProducerVO loginProducer(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace + ".loginProducer", dto);
	}

	@Override
	public DeliverVO loginDeliver(LoginDTO dto) throws Exception {
		return session.selectOne(namespace+".loginDeliver", dto);
	}
}
