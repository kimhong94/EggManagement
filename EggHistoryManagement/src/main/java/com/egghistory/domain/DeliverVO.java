package com.egghistory.domain;

//배송업체 
public class DeliverVO {

	// 배송업체ID 
	private String did;

	// 비밀번호 
	private String dpw;

	// 배송업체이름 
	private String dcompany;
	
	// 배송업체 번호
	private String dphone;

	// 배송업체위치 
	private String dlocation;

	public String getDphone() {
		return dphone;
	}

	public void setDphone(String dphone) {
		this.dphone = dphone;
	}

	// 업체대표 
	private String prepresentative;

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String getDpw() {
		return dpw;
	}

	public void setDpw(String dpw) {
		this.dpw = dpw;
	}

	public String getDcompany() {
		return dcompany;
	}

	public void setDcompany(String dcompany) {
		this.dcompany = dcompany;
	}

	public String getDlocation() {
		return dlocation;
	}

	public void setDlocation(String dlocation) {
		this.dlocation = dlocation;
	}

	public String getPrepresentative() {
		return prepresentative;
	}

	public void setPrepresentative(String prepresentative) {
		this.prepresentative = prepresentative;
	}

	// Deliver 모델 복사
	public void CopyData(DeliverVO param)
	{
		this.did = param.getDid();
		this.dpw = param.getDpw();
		this.dcompany = param.getDcompany();
		this.dlocation = param.getDlocation();
		this.prepresentative = param.getPrepresentative();
	}

	@Override
	public String toString() {
		return "DeliverVO [did=" + did + ", dpw=" + dpw + ", dcompany=" + dcompany + ", dphone=" + dphone
				+ ", dlocation=" + dlocation + ", prepresentative=" + prepresentative + "]";
	}
	
	
	
}