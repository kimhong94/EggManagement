package com.egghistory.domain;

public class DeliverEmployeeVO {

    // 해쉬아이디uuid 
    private String deliveruuid;

    // 배송업체id 
    private String deliverid;

    // 배송자이름 
    private String ddeliver;

    // 연락처 
    private String deliverphone;

    public String getDeliveruuid() {
        return deliveruuid;
    }

    public void setDeliveruuid(String deliveruuid) {
        this.deliveruuid = deliveruuid;
    }

    public String getDeliverid() {
        return deliverid;
    }

    public void setDeliverid(String deliverid) {
        this.deliverid = deliverid;
    }

    public String getDdeliver() {
        return ddeliver;
    }

    public void setDdeliver(String ddeliver) {
        this.ddeliver = ddeliver;
    }

    public String getDeliverphone() {
        return deliverphone;
    }

    public void setDeliverphone(String deliverphone) {
        this.deliverphone = deliverphone;
    }

    // Deliveremployee 모델 복사
    public void CopyData(DeliverEmployeeVO param)
    {
        this.deliveruuid = param.getDeliveruuid();
        this.deliverid = param.getDeliverid();
        this.ddeliver = param.getDdeliver();
        this.deliverphone = param.getDeliverphone();
    }

	@Override
	public String toString() {
		return "DeliverEmployeeVO [deliveruuid=" + deliveruuid + ", deliverid=" + deliverid + ", ddeliver=" + ddeliver
				+ ", deliverphone=" + deliverphone + "]";
	}
    
    
}