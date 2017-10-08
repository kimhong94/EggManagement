package com.egghistory.domain;

public class ProducerVO {

    // 아이디(사업자번호) 
    private String pid;

    // 비밀번호 
    private String ppw;

    // 사업장위치 
    private String plocation;

    // 사업장이름 
    private String pname;

    // 사업장전화번호 
    private String pphone;

    // 사업자대표이름 
    private String prepresentative;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPpw() {
        return ppw;
    }

    public void setPpw(String ppw) {
        this.ppw = ppw;
    }

    public String getPlocation() {
        return plocation;
    }

    public void setPlocation(String plocation) {
        this.plocation = plocation;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPphone() {
        return pphone;
    }

    public void setPphone(String pphone) {
        this.pphone = pphone;
    }

    public String getPrepresentative() {
        return prepresentative;
    }

    public void setPrepresentative(String prepresentative) {
        this.prepresentative = prepresentative;
    }

    // Producer 모델 복사
    public void CopyData(ProducerVO param)
    {
        this.pid = param.getPid();
        this.ppw = param.getPpw();
        this.plocation = param.getPlocation();
        this.pname = param.getPname();
        this.pphone = param.getPphone();
        this.prepresentative = param.getPrepresentative();
    }

	@Override
	public String toString() {
		return "ProducerVO [pid=" + pid + ", ppw=" + ppw + ", plocation=" + plocation + ", pname=" + pname + ", pphone="
				+ pphone + ", prepresentative=" + prepresentative + "]";
	}
    
    
}