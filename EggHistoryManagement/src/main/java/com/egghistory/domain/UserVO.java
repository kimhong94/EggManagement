package com.egghistory.domain;

/**
 *	홈페이지에서 유저들의 정보를 다루기 위한 클래스
 */
public class UserVO {
	
    private String userId;

    private String userPw;
    
    
    // producer, 유통자, 소비자의 정보를 갖는다.
    private ProducerVO producerVO;


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPw() {
		return userPw;
	}


	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}


	public ProducerVO getProducerVO() {
		return producerVO;
	}


	public void setProducerVO(ProducerVO producerVO) {
		this.producerVO = producerVO;
	}
    
    
}
