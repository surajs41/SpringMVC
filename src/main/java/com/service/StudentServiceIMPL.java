package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Student;
import com.repository.StudentDao;

@Service
public class StudentServiceIMPL implements StudentService {
	@Autowired
	private StudentDao dao; 
	
	public void saveStudnet(Student student) {
	System.out.println("Service--"+student);
		dao.saveStudent(student);
	}

	public List<Student> loginCheck(String username,String password) {
		if(username.equals("admin")  && password.equals("123"))
		{
			return dao.getAllStudents();
		}
		else {
			List<Student> list = new ArrayList<Student>();
			return list;
		}
	}

	public Student getById(int sid) 
	{
		return dao.getById(sid);
	}

	public List<Student> UpdateStudent(Student student) {
		return dao.updateStudent(student);
	}

	public List<Student> deleteStudent(int sid) {
		return dao.deleteStudent(sid);
	}

}
