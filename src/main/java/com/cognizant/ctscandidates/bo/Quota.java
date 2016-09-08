package com.cognizant.ctscandidates.bo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Quota {
	@Id
	@GeneratedValue
	private Integer quotaId;
	private Integer jobCode;
	private String jobTitle;
	private String jobGradle;
	@OneToMany
	private List<Timeline> timelineList;
	
	public Integer getQuotaId() {
		return quotaId;
	}
	public void setQuotaId(Integer quotaId) {
		this.quotaId = quotaId;
	}
	public Integer getJobCode() {
		return jobCode;
	}
	public void setJobCode(Integer jobCode) {
		this.jobCode = jobCode;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getJobGradle() {
		return jobGradle;
	}
	public void setJobGradle(String jobGradle) {
		this.jobGradle = jobGradle;
	}
	public List<Timeline> getTimelineList() {
		return timelineList;
	}
	public void setTimelineList(List<Timeline> timelineList) {
		this.timelineList = timelineList;
	}
	
	
}
