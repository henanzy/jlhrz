package com.hnzy.hot.pojo;

import java.io.Serializable;
import java.util.Date;

public class FmInfo implements Serializable {

	private static final long serialVersionUID = -4072646355182930123L;

	private Integer id;

	private String valAd;// 阀门地址

	private String status;// 状态

	private Integer famKd;// 阀门开度

	private Double valTemp;// 管道温度

	private Double roomTemp;// 室内温度

	private Date recordTime;// 采集温度
	private String type; //室外天气

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getValAd() {
		return valAd;
	}

	public void setValAd(String valAd) {
		this.valAd = valAd;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getFamKd() {
		return famKd;
	}

	public void setFamKd(Integer famKd) {
		this.famKd = famKd;
	}

	public Double getValTemp() {
		return valTemp;
	}

	public void setValTemp(Double valTemp) {
		this.valTemp = valTemp;
	}

	public Double getRoomTemp() {
		return roomTemp;
	}

	public void setRoomTemp(Double roomTemp) {
		this.roomTemp = roomTemp;
	}

	public Date getRecordTime() {
		return recordTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
