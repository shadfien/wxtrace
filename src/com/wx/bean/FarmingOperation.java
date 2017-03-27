package com.wx.bean;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name="farmingOperation")
public class FarmingOperation {
	//操作时间、类型、描述、属于的种植记录
	private int id;
	private Date operateDate;
	private String type;
	private String description;
	private Plant plant;
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	public Date getOperateDate() {
		return operateDate;
	}
	@ManyToOne
	public Plant getPlant() {
		return plant;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setOperateDate(Date operateDate) {
		this.operateDate = operateDate;
	}
	public void setPlant(Plant plant) {
		this.plant = plant;
	}

	public String getType() {
		return type;
	}

	public String getDescription() {
		return description;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
