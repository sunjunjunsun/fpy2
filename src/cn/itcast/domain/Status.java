package cn.itcast.domain;

public class Status {

	private String serialnumber;
	private String location;
	private String pin;
	private String errcode;
	private String repairstatus;
	private String imagefilename;
	private String algorithm;
	private String subtype;
	
	
	
	public String getAlgorithm() {
		return algorithm;
	}
	public void setAlgorithm(String algorithm) {
		this.algorithm = algorithm;
	}
	
	
	
	
	
	public String getSerialnumber() {
		return serialnumber;
	}
	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
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
	public String getRepairstatus() {
		return repairstatus;
	}
	public void setRepairstatus(String repairstatus) {
		this.repairstatus = repairstatus;
	}
	public String getImagefilename() {
		return imagefilename;
	}
	public void setImagefilename(String imagefilename) {
		this.imagefilename = imagefilename;
	}
	public String getSubtype() {
		return subtype;
	}
	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}
	@Override
	public String toString() {
		return "Status [serialnumber=" + serialnumber + ", location=" + location + ", pin=" + pin + ", errcode="
				+ errcode + ", repairstatus=" + repairstatus + ", imagefilename=" + imagefilename + ", algorithm="
				+ algorithm + ", subtype=" + subtype + "]";
	}

	
	
	

	
	
	
}
