package com.service;

import java.util.List;

import com.model.Student;

public interface StudentService {

	void saveStudnet(Student student);

	List<Student> loginCheck(String username, String password);

	Student getById(int sid);

	List<Student> UpdateStudent(Student student);

	List<Student> deleteStudent(int sid);

}
