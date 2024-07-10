 package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Student;
import com.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService service;

	@RequestMapping("/")
	public String landingPage()
	{
		System.out.println("landing page called...!");
		return "index";
	}
	
	@RequestMapping("/loginpage")
	public String loginPage()
	{
		System.out.println("Login Page Called...!");
		return "login";
	}
	
	@RequestMapping("/registerpage")
	public String registerPage()
	{
		return "register";
	}
	
	@RequestMapping("/loginCheck")
	public String loginCheck(@RequestParam String username, @RequestParam String password,Model model)
	{
		System.out.println("logincheck called...!");
		List<Student> slist= service.loginCheck(username, password);
		if(slist!=null)
		{
		model.addAttribute("data",slist);
		return "success";
		}
		else 
		{
			return "login";
		}
		
	}
	
	@RequestMapping("/registerstudent")
	public String registerStudent(@ModelAttribute Student student)
	{
		System.out.println("Student Register Called...!");
		System.out.println(student);
		service.saveStudnet(student);
		return "register";
		
	}
	@RequestMapping("/editstudent")
	public String  editStudent(@RequestParam int sid,Model model) {
		System.out.println("Edit Page Called...!");
		Student stu = service.getById(sid);
		System.out.println(stu);
		model.addAttribute("data",stu);
		return "edit";
	}
	
	@RequestMapping("/updateStudent")
	public String UpdateStudent(@ModelAttribute Student student,Model model) {
		List<Student> slist= service.UpdateStudent(student);
		if(slist!=null)
		{
		model.addAttribute("data",slist);
		return "success";
		}
		else 
		{
			return "login";
		}
	}
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(@RequestParam int sid,Model model) {
	System.out.println("Delete Page Called...!");
	List<Student> slist = service.deleteStudent(sid);
	if(slist!=null)
	{
	model.addAttribute("data",slist);
	return "success";
	}
	else 
	{
		return "login";
	}
	}
	
}
