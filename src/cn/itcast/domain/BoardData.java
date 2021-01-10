package cn.itcast.domain;

import java.util.Date;

public class BoardData {
	
	
	private String boardType;
	private String serialNumber;
	private String location;
	private String pin;
	private String errorCode;
	private String algorithm;
	private String subtype;
	private String repairStatus;
	private String testerName;
	private Date testTime;
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
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
	public String getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	public String getAlgorithm() {
		return algorithm;
	}
	public void setAlgorithm(String algorithm) {
		this.algorithm = algorithm;
	}
	public String getSubtype() {
		return subtype;
	}
	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}
	public String getRepairStatus() {
		return repairStatus;
	}
	public void setRepairStatus(String repairStatus) {
		this.repairStatus = repairStatus;
	}
	public String getTesterName() {
		return testerName;
	}
	public void setTesterName(String testerName) {
		this.testerName = testerName;
	}
	public Date getTestTime() {
		return testTime;
	}
	public void setTestTime(Date testTime) {
		this.testTime = testTime;
	}
	@Override
	public String toString() {
		return "BoardData [boardType=" + boardType + ", serialNumber=" + serialNumber + ", location=" + location
				+ ", pin=" + pin + ", errorCode=" + errorCode + ", algorithm=" + algorithm + ", subtype=" + subtype
				+ ", repairStatus=" + repairStatus + ", testerName=" + testerName + ", testTime=" + testTime + "]";
	}
	
	
	
	
	
	
	

}
