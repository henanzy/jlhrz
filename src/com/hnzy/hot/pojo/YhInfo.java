package com.hnzy.hot.pojo;

import java.io.Serializable;
import java.util.Date;
public class YhInfo implements Serializable {
/**
	 * 
	 */
private static final long serialVersionUID = 1L;
private int id;
private String valAd;//阀门
private String xqName;//小区名字
private Integer buildNo;//楼栋号
private Integer cellNo;//单元号
private Integer houseNo;//户号
private String yhName;//用户名字
private String telephone;//电话号码
private Double buileArea;//建筑面积
private Double heatArea;//供热面积
private String sfjf; //缴费状态
private String status;// 状态
private Integer famKd;// 阀门开度
private Double valTemp;// 管道温度
private Double roomTemp;// 室内温度
private Date recordTime;// 采集时间
private String wCAd;//采集器地址
private String type; //室外天气

public String getwCAd() {
	return wCAd;
}
public void setwCAd(String wCAd) {
	this.wCAd = wCAd;
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
public void setRecordTime(Date recordTime) {
	this.recordTime = recordTime;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}
public String getYhName() {
	return yhName;
}
public void setYhName(String yhName) {
	this.yhName = yhName;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}

public Double getBuileArea() {
	return buileArea;
}
public void setBuileArea(Double buileArea) {
	this.buileArea = buileArea;
}

public Double getHeatArea() {
	return heatArea;
}
public void setHeatArea(Double heatArea) {
	this.heatArea = heatArea;
}

public String getSfjf() {
	return sfjf;
}
public void setSfjf(String sfjf) {
	this.sfjf = sfjf;
}

public String getValAd() {
	return valAd;
}
public void setValAd(String valAd) {
	this.valAd = valAd;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public Integer getBuildNo() {
	return buildNo;
}
public void setBuildNo(Integer buildNo) {
	this.buildNo = buildNo;
}
public Integer getCellNo() {
	return cellNo;
}
public void setCellNo(Integer cellNo) {
	this.cellNo = cellNo;
}
public Integer getHouseNo() {
	return houseNo;
}
public void setHouseNo(Integer houseNo) {
	this.houseNo = houseNo;
}
public String getXqName() {
	return xqName;
}
public void setXqName(String xqName) {
	this.xqName = xqName;
}

public void setBuildNo(int buildNo) {
	this.buildNo = buildNo;
}

public void setHouseNo(int houseNo) {
	this.houseNo = houseNo;
}
}
