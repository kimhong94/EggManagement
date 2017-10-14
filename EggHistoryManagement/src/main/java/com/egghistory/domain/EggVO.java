package com.egghistory.domain;


import java.sql.Timestamp;

public class EggVO {

    // 식별번호 
    private Integer eid;

    // 사업자번호 
    private String pid;

    // 판매번호 
    private Integer sid;

    // 계란품종 
    private String ekind;

    // 계란등급 
    private String erank;

    // 계란규격 
    private String eweight;

    // 생산지위치 
    private String plocation;

    // 유통기한 
    private Timestamp eexpire;

    // 생산날짜 
    private Timestamp ebirth;

    private int ecount;
    
    public int getEcount() {
		return ecount;
	}

	public void setEcount(int ecount) {
		this.ecount = ecount;
	}

	public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getEkind() {
        return ekind;
    }

    public void setEkind(String ekind) {
        this.ekind = ekind;
    }

    public String getErank() {
        return erank;
    }

    public void setErank(String erank) {
        this.erank = erank;
    }

    public String getEweight() {
        return eweight;
    }

    public void setEweight(String eweight) {
        this.eweight = eweight;
    }

    public String getPlocation() {
        return plocation;
    }

    public void setPlocation(String plocation) {
        this.plocation = plocation;
    }

    public Timestamp getEexpire() {
        return eexpire;
    }

    public void setEexpire(Timestamp eexpire) {
        this.eexpire = eexpire;
    }

    public Timestamp getEbirth() {
        return ebirth;
    }

    public void setEbirth(Timestamp ebirth) {
        this.ebirth = ebirth;
    }

    // Egg 모델 복사
    public void CopyData(EggVO param)
    {
        this.eid = param.getEid();
        this.pid = param.getPid();
        this.sid = param.getSid();
        this.ekind = param.getEkind();
        this.erank = param.getErank();
        this.eweight = param.getEweight();
        this.plocation = param.getPlocation();
        this.eexpire = param.getEexpire();
        this.ebirth = param.getEbirth();
    }

	@Override
	public String toString() {
		return "EggVO [eid=" + eid + ", pid=" + pid + ", sid=" + sid + ", ekind=" + ekind + ", erank=" + erank
				+ ", eweight=" + eweight + ", plocation=" + plocation + ", eexpire=" + eexpire + ", ebirth=" + ebirth
				+ ", ecount=" + ecount + "]";
	}
    
    
}