package com.fly.bean;

import java.io.Serializable;

public class Paper implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String[] languages;
	private String technics[];
	private String[] parts;
	public String[] getLanguages() {
		return languages;
	}
	public void setLanguages(String[] languages) {
		this.languages = languages;
	}
	public String[] getTechnics() {
		return technics;
	}
	public void setTechnics(String[] technics) {
		this.technics = technics;
	}
	public String[] getParts() {
		return parts;
	}
	public void setParts(String[] parts) {
		this.parts = parts;
	}
	
}
