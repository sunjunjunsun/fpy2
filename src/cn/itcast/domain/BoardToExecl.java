package cn.itcast.domain;

import java.util.Date;

public class BoardToExecl {

	private String recipse;
	private String sn;
	private String location;
	private String pin;
    private String errcode; 
	private Date testtime;
	private String algorithm;
	private String subType;
	
	
	
	public String getRecipse() {
		return recipse;
	}




	public void setRecipse(String recipse) {
		this.recipse = recipse;
	}




	public String getSn() {
		return sn;
	}




	public void setSn(String sn) {
		this.sn = sn;
	}




	public String getLocation() {
		return location;
	}




	public void setLocation(String location) {
		this.location = location;
	}




	public String getPin() {
		return pin;
	}




	public void setPin(String pin) {
		this.pin = pin;
	}




	public String getErrcode() {
		return errcode;
	}




	public void setErrcode(String errcode) {
		this.errcode = errcode;
	}




	public Date getTesttime() {
		return testtime;
	}




	public void setTesttime(Date testtime) {
		this.testtime = testtime;
	}




	public String getAlgorithm() {
		return algorithm;
	}




	public void setAlgorithm(String algorithm) {
		this.algorithm = algorithm;
	}




	public String getSubType() {
		return subType;
	}




	public void setSubType(String subType) {
		this.subType = subType;
	}




	@Override
	public String toString() {
		return "BoardToExecl [recipse=" + recipse + ", sn=" + sn + ", location=" + location + ", pin=" + pin
				+ ", errcode=" + errcode + ", testtime=" + testtime + ", algorithm=" + algorithm + ", subType="
				+ subType + "]";
	}


    
	/* public boolean equals(Object obj) {
		 BoardToExecl board = (BoardToExecl) obj;
		 return location.equals(board.location);
	 }
	
	 public int hashCode() {
		 String in = location;
		 return in.hashCode();
	 }
	*/
	
}
