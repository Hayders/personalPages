package com.sap.hcm.cloud.entity.moives;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MOIVE_STAFF")
public class Staff {

	@Id
	@Column(name = "STAFF_ID", length = 50)
	private String id;
	
	@Column(name = "STAFF_NAME", length = 50)
	private String name;
	
	@Column(name = "STAFF_LINK", length = 50)
	private String alt;
	
	@Column(name = "STAFF_IMAGES_SAMLL", length = 50)
	private String avatars_small;
	
	@Column(name = "STAFF_IMAGES_MEDIUM", length = 50)
	private String avatars_medium;
	
	@Column(name = "STAFF_IMAGES_LARGE", length = 50)
	private String avatars_large;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public String getAvatars_small() {
		return avatars_small;
	}

	public void setAvatars_small(String avatars_small) {
		this.avatars_small = avatars_small;
	}

	public String getAvatars_medium() {
		return avatars_medium;
	}

	public void setAvatars_medium(String avatars_medium) {
		this.avatars_medium = avatars_medium;
	}

	public String getAvatars_large() {
		return avatars_large;
	}

	public void setAvatars_large(String avatars_large) {
		this.avatars_large = avatars_large;
	}

}
