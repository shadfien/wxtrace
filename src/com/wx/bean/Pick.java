package com.wx.bean;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.struts2.json.annotations.JSON;

@Entity
@Table(name="pick")
public class Pick {
	//采摘时间、采摘量、预计价格、所属种植记录、
	private Integer id;
	private Date pickDate;
	private Float pickAmount;
	private Float price;
	private Plant plant;
	private Inspection inspection;
	private List<Logistic> logistics;
	
	private String batchNum;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	@Temporal(TemporalType.TIMESTAMP)
	public Date getPickDate() {
		return pickDate;
	}
	public Float getPickAmount() {
		return pickAmount;
	}
	public Float getPrice() {
		return price;
	}
	@ManyToOne
	public Plant getPlant() {
		return plant;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setPickDate(Date pickDate) {
		this.pickDate = pickDate;
	}
	public void setPickAmount(Float pickAmount) {
		this.pickAmount = pickAmount;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public void setPlant(Plant plant) {
		this.plant = plant;
	}
	//@OneToOne(optional = true, mappedBy="pick")
	@OneToOne
	public Inspection getInspection() {
		return inspection;
	}
	public void setInspection(Inspection inspection) {
		this.inspection = inspection;
	}
	@OneToMany(mappedBy="pick")
	@JSON(serialize=false)
	public List<Logistic> getLogistics() {
		return logistics;
	}
	public void setLogistics(List<Logistic> logistics) {
		this.logistics = logistics;
	}
	public String getBatchNum() {
		return batchNum;
	}
	public void setBatchNum(String batchNum) {
		this.batchNum = batchNum;
	}
	
	
	

}
