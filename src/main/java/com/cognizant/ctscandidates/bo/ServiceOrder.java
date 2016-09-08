package com.cognizant.ctscandidates.bo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class ServiceOrder {
	@Id
	@GeneratedValue
	private Long serviceOrderId;
	@OneToMany
	private List<Quota> quotaList;
	
	

	public Long getServiceOrderId() {
		return serviceOrderId;
	}
	public void setServiceOrderId(Long serviceOrderId) {
		this.serviceOrderId = serviceOrderId;
	}
	public List<Quota> getQuotaList() {
		return quotaList;
	}
	public void setQuotaList(List<Quota> quotaList) {
		this.quotaList = quotaList;
	}
	
	
	
	
}
