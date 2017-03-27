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
@Table(name="logistic")
public class Logistic {
	//包装批次号、配送人员、配送时间、零售商名称/消费者、总重量、单价
	private Integer id;
	private String batchNum;
	private User user;
	private Date logisticDate;
	private String customer;
	private Float totalWeight;
	private Float price;
	private Pick pick;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public String getBatchNum() {
		return batchNum;
	}
	@OneToOne
	public User getUser() {
		return user;
	}
	@Temporal(TemporalType.TIMESTAMP)
	public Date getLogisticDate() {
		return logisticDate;
	}
	public String getCustomer() {
		return customer;
	}
	public Float getTotalWeight() {
		return totalWeight;
	}
	public Float getPrice() {
		return price;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setBatchNum(String batchNum) {
		this.batchNum = batchNum;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setLogisticDate(Date logisticDate) {
		this.logisticDate = logisticDate;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public void setTotalWeight(Float totalWeight) {
		this.totalWeight = totalWeight;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	@ManyToOne
	public Pick getPick() {
		return pick;
	}
	public void setPick(Pick pick) {
		this.pick = pick;
	}
	
}
