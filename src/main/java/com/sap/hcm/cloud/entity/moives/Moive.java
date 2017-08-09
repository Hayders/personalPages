package com.sap.hcm.cloud.entity.moives;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "MOIVE")
public class Moive {

	@Id
	@Column(name = "MOIVE_ID", length = 50)
	private String id;
	
	@Column(name = "MOIVE_TITLE", length = 50)
	private String title;
	
	@Column(name = "MOIVE_GENRES", length = 50)
	private String genres;
	
	@Column(name = "MOIVE_RATING", length = 50)
	private String rating;
	
	@Column(name = "MOIVE_YEAR", length = 50)
	private String year;
	
	@Column(name = "MOIVE_LINK", length = 50)
	private String alt;
	
	@Column(name = "MOIVE_IMAGES_SAMLL", length = 50)
	private String images_small;
	
	@Column(name = "MOIVE_IMAGES_MEDIUM", length = 50)
	private String images_medium;
	
	@Column(name = "MOIVE_IMAGES_LARGE", length = 50)
	private String images_large;

	@OneToOne
	@JoinColumn(name = "Director_ID")
	private Staff director;
	
	@OneToMany
    @JoinColumn(name = "MOIVE_ID")
	private Set<Staff> casts = new HashSet<Staff>();

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenres() {
		return genres;
	}

	public void setGenres(String genres) {
		this.genres = genres;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public String getImages_small() {
		return images_small;
	}

	public void setImages_small(String images_small) {
		this.images_small = images_small;
	}

	public String getImages_medium() {
		return images_medium;
	}

	public void setImages_medium(String images_medium) {
		this.images_medium = images_medium;
	}

	public String getImages_large() {
		return images_large;
	}

	public void setImages_large(String images_large) {
		this.images_large = images_large;
	}

	public Staff getDirectors() {
		return director;
	}

	public void setDirectors(Staff directors) {
		this.director = directors;
	}

	public Set<Staff> getCasts() {
		return casts;
	}

	public void setCasts(Set<Staff> casts) {
		this.casts = casts;
	}

}
