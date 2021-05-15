package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Student;
import com.example.demo.repository.StudentRepository;
import com.example.demo.vo.StudentVO;



@RestController
@RequestMapping(value = "rest")
public class AjaxTestController {

	@Autowired
	StudentRepository studentRepository;
	
	@PostMapping(value = "dashboard/addStudent")
	public boolean add(StudentVO student) { 
		System.out.println("dashboard/addStudent 들어옴");
		System.out.println("studentvo.getName(): "+student.getName()+" /studentvo.getAge(): "+student.getAge());
		Student s = new Student();
		s.setName(student.getName());
		s.setAge(student.getAge());
		s.setSchoolName(student.getSchoolName());
		studentRepository.save(s);
		return true;
	}
}
