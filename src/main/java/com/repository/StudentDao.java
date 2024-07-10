package com.repository;

import java.util.List;

import com.model.Student;

public interface StudentDao {

	void saveStudent(Student student);
	
	List<Student> getAllStudents();

	Student getById(int sid);

	List<Student> updateStudent(Student student);

	List<Student> deleteStudent(int sid);


}
