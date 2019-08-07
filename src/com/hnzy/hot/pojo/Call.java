package com.hnzy.hot.pojo;

import java.util.Date;

public class Call {
	//id
	private  int Id;
	private int callFlag; //来电标识 1呼入2呼出
	private String callerNo;//呼入手机号
	private String calledNo;//呼出手机号
	private String inTime;//电话进入时间
	private String startTime;//开始时间
	private String endTime;//结束时间
	private String fileName;//录音路径
	private String recTime;//创建时间
	private int giveups;//是否录音0录音1未录音
	
	
	public int getGiveups() {
		return giveups;
	}
	public void setGiveups(int giveups) {
		this.giveups = giveups;
	}
	public String getRecTime() {
		return recTime;
	}
	public void setRecTime(String recTime) {
		this.recTime = recTime;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getCallFlag() {
		return callFlag;
	}
	public void setCallFlag(int callFlag) {
		this.callFlag = callFlag;
	}
	public String getCallerNo() {
		return callerNo;
	}
	public void setCallerNo(String callerNo) {
		this.callerNo = callerNo;
	}
	public String getCalledNo() {
		return calledNo;
	}
	public void setCalledNo(String calledNo) {
		this.calledNo = calledNo;
	}
	public String getInTime() {
		return inTime;
	}
	public void setInTime(String inTime) {
		this.inTime = inTime;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
}
