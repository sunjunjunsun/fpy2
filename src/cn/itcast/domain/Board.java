package cn.itcast.domain;

import java.util.Date;
import java.util.List;

public class Board {

	private String serialnumber;
	private String boardtype;
	private String testername;
	private String teststatus;
	private Date testtime;
	private List<Status> status;
	public String getSerialnumber() {
		return serialnumber;
	}
	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
	}
	public String getBoardtype() {
		return boardtype;
	}
	public void setBoardtype(String boardtype) {
		this.boardtype = boardtype;
	}
	public String getTestername() {
		return testername;
	}
	public void setTestername(String testername) {
		this.testername = testername;
	}
	public String getTeststatus() {
		return teststatus;
	}
	public void setTeststatus(String teststatus) {
		this.teststatus = teststatus;
	}
	public Date getTesttime() {
		return testtime;
	}
	public void setTesttime(Date testtime) {
		this.testtime = testtime;
	}
	public List<Status> getStatus() {
		return status;
	}
	public void setStatus(List<Status> status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Board [serialnumber=" + serialnumber + ", boardtype=" + boardtype + ", testername=" + testername
				+ ", teststatus=" + teststatus + ", testtime=" + testtime + ", status=" + status + "]";
	}
	
	
	
	
}
