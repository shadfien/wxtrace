package com.wx.bean;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.struts2.json.annotations.JSON;

@Entity
@Table(name="plant")
public class Plant {
	//蔬菜类型、种子类型、种植时间、种植面积、农事操作、属于哪个棚
	private int id;
	private String vegetableType;
	private String seedType;
	private Date plantDate;
	private String mj;
	private List<FarmingOperation> farmingOperations;
	private List<Pick> picks;
	private Greenhouse greenhouse;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public String getVegetableType() {
		return vegetableType;
	}
	public String getSeedType() {
		return seedType;
	}
	@Temporal(TemporalType.TIMESTAMP)
	public Date getPlantDate() {
		return plantDate;
	}
	public String getMj() {
		return mj;
	}
	@OneToMany(mappedBy="plant")
	@JSON(serialize=false)
	public List<FarmingOperation> getFarmingOperations() {
		return farmingOperations;
	}
	@ManyToOne
	public Greenhouse getGreenhouse() {
		return greenhouse;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setVegetableType(String vegetableType) {
		this.vegetableType = vegetableType;
	}
	public void setSeedType(String seedType) {
		this.seedType = seedType;
	}
	public void setPlantDate(Date plantDate) {
		this.plantDate = plantDate;
	}
	public void setMj(String mj) {
		this.mj = mj;
	}
	public void setFarmingOperations(List<FarmingOperation> farmingOperations) {
		this.farmingOperations = farmingOperations;
	}
	public void setGreenhouse(Greenhouse greenhouse) {
		this.greenhouse = greenhouse;
	}
	@OneToMany(mappedBy="plant")
	@JSON(serialize=false)
	public List<Pick> getPicks() {
		return picks;
	}
	public void setPicks(List<Pick> picks) {
		this.picks = picks;
	}
}
