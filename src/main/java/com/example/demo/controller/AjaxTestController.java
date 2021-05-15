package com.example.demo.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.vo.StudentVO;

@RestController
@RequestMapping(value = "rest")
public class AjaxTestController {

	
	@PostMapping(value = "dashboard/addStudent")
	public boolean add(StudentVO studentvo) { 
		System.out.println("dashboard/addStudent 들어옴");
		System.out.println("studentvo.getName(): "+studentvo.getName()+" /studentvo.getAge(): "+studentvo.getAge());
		return true;
	}
}
