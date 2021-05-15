package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
@Entity(name="student")
public class Student {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
    private int id;
	
	private String name; 
	
	private String age; 
	
	private String schoolName;

}
