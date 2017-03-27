package com.wx.bean;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.apache.struts2.json.annotations.JSON;
@Entity
@Table(name="greenhouse")
public class Greenhouse {
	//大棚编号（1-18）、大棚名，大棚面积（长宽高）、棚型、结构（山墙高度、宽度、厚度）、负责人、位置、
	private Integer id;
	private String name;
	private String mj;
	private String px;
	private String jg;
	private User fzr;
	private String wz;
	private List<Plant> plants;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public String getMj() {
		return mj;
	}
	public String getPx() {
		return px;
	}
	public String getJg() {
		return jg;
	}
	@ManyToOne
	public User getFzr() {
		return fzr;
	}
	public String getWz() {
		return wz;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setMj(String mj) {
		this.mj = mj;
	}
	public void setPx(String px) {
		this.px = px;
	}
	public void setJg(String jg) {
		this.jg = jg;
	}
	public void setFzr(User fzr) {
		this.fzr = fzr;
	}
	public void setWz(String wz) {
		this.wz = wz;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@OneToMany(mappedBy="greenhouse")
	@JSON(serialize=false)
	public List<Plant> getPlants() {
		return plants;
	}
	public void setPlants(List<Plant> plants) {
		this.plants = plants;
	}
	
}
