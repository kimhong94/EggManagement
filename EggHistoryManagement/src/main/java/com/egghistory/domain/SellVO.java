package com.egghistory.domain;

import java.sql.Timestamp;
import java.util.List;

public class SellVO{

    // 판매번호 
    private Integer sid;

    // 판매자 
    private String pid;
    
	// 주문자 
    private String sorderer;

    // 주문자주소 
    private String saddr;

    // 주문날짜 
    private Timestamp stime;

    // 갯수 
    private int snumber;

    // 배송업체ID 
    private String did;

    // 배송자 
    private String ddeliver;

    // 배송방법 
    private String dway;

    // 배송업체 
    private String dcompany;

    // 출발시간 
    private Timestamp starttime;

    // 도착시간 
    private Timestamp arrivetime;
    
    // for DTO
    private List<EggVO> eggs;

    
    public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}
    
    public List<EggVO> getEggs() {
		return eggs;
	}

	public void setEggs(List<EggVO> eggs) {
		this.eggs = eggs;
	}

	public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSorderer() {
        return sorderer;
    }

    public void setSorderer(String sorderer) {
        this.sorderer = sorderer;
    }

    public String getSaddr() {
        return saddr;
    }

    public void setSaddr(String saddr) {
        this.saddr = saddr;
    }

    public Timestamp getStime() {
        return stime;
    }

    public void setStime(Timestamp stime) {
        this.stime = stime;
    }

    public int getSnumber() {
        return snumber;
    }

    public void setSnumber(int snumber) {
        this.snumber = snumber;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getDdeliver() {
        return ddeliver;
    }

    public void setDdeliver(String ddeliver) {
        this.ddeliver = ddeliver;
    }

    public String getDway() {
        return dway;
    }

    public void setDway(String dway) {
        this.dway = dway;
    }

    public String getDcompany() {
        return dcompany;
    }

    public void setDcompany(String dcompany) {
        this.dcompany = dcompany;
    }

    public Timestamp getStarttime() {
        return starttime;
    }

    public void setStarttime(Timestamp starttime) {
        this.starttime = starttime;
    }

    public Timestamp getArrivetime() {
        return arrivetime;
    }

    public void setArrivetime(Timestamp arrivetime) {
        this.arrivetime = arrivetime;
    }
    
	@Override
	public String toString() {
		return "SellVO [sid=" + sid + ", sorderer=" + sorderer + ", saddr=" + saddr + ", stime=" + stime + ", snumber="
				+ snumber + ", did=" + did + ", ddeliver=" + ddeliver + ", dway=" + dway + ", dcompany=" + dcompany
				+ ", starttime=" + starttime + ", arrivetime=" + arrivetime + ", eggs=" + eggs + "]";
	}

	// Sell 모델 복사
    public void CopyData(SellVO param)
    {
        this.sid = param.getSid();
        this.sorderer = param.getSorderer();
        this.saddr = param.getSaddr();
        this.stime = param.getStime();
        this.snumber = param.getSnumber();
        this.did = param.getDid();
        this.ddeliver = param.getDdeliver();
        this.dway = param.getDway();
        this.dcompany = param.getDcompany();
        this.starttime = param.getStarttime();
        this.arrivetime = param.getArrivetime();
    }
}