package com.egghistory.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.egghistory.domain.DeliverEmployeeVO;
import com.egghistory.domain.DeliverVO;

@Repository
public class DeliverDAOImpl implements DeliverDAO {
	
	@Inject
	SqlSession session;
	
	private static final String namespace = "com.egghistory.mapper.DeliverMapper";

	@Override
	public void registerDeliverEmployee(DeliverEmployeeVO evo) throws Exception {
		session.insert(namespace+".registerDeliverEmployee", evo);
	}

	@Override
	public List<DeliverEmployeeVO> listDeliverEmployeesByDeliverId(String deliverid) throws Exception {
		return session.selectList(namespace+".listDeliverEmployeesByDeliverId", deliverid);
	}

	@Override
	public DeliverEmployeeVO getDeliverEmployeeInfoByUUID(String uuid) throws Exception {
		return session.selectOne(namespace+".getDeliverEmployeeInfoByUUID", uuid);
	}

	@Override
	public DeliverVO getDeliverByDeliverId(String deliverid) throws Exception {
		return session.selectOne(namespace+".getDeliverByDeliverId", deliverid);
	}

}
