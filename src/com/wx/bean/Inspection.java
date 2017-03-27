package com.wx.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="inspection")
public class Inspection {
	//检测编号、检测人员、检测信息（药物残留）、检测时间、产品等级、检测报告（农业部联网检测）、检测指标（待定）
	private Integer id;
	private String name;
	private User user;
	private Pick pick;
	private String detectionInf;//检测内容
	private Date inspectionDate;
	private String productGrade;//抑制率
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	@ManyToOne
	public User getUser() {
		return user;
	}
	public String getDetectionInf() {
		return detectionInf;
	}
	@Temporal(TemporalType.TIMESTAMP)
	public Date getInspectionDate() {
		return inspectionDate;
	}
	public String getProductGrade() {
		return productGrade;
	}
	@OneToOne
	public Pick getPick() {
		return pick;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setDetectionInf(String detectionInf) {
		this.detectionInf = detectionInf;
	}
	public void setInspectionDate(Date inspectionDate) {
		this.inspectionDate = inspectionDate;
	}
	public void setProductGrade(String productGrade) {
		this.productGrade = productGrade;
	}
	public void setPick(Pick pick) {
		this.pick = pick;
	}
	
	
}
