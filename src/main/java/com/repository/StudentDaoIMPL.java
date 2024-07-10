package com.repository;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.model.Student;

@Repository
public class StudentDaoIMPL implements StudentDao {
	
	@Autowired
	private SessionFactory factory;

	public void saveStudent(Student student) {
		System.out.println("Dao---"+student);
		Session session =factory.openSession();
		session.save(student);
		session.beginTransaction().commit();
		System.out.println("Student Saved in Database...!");	
	}

	public List<Student> getAllStudents() {
	Session session = factory.openSession();
	Query query =session.createQuery("from Student");
	return query.getResultList();
	}

	public Student getById(int sid) {
		Session session = factory.openSession();
		Student stu = session.get(Student.class, sid);
		return stu;
	}

	public List<Student> updateStudent(Student student) {
		Session session =factory.openSession();
		session.update(student);
		session.beginTransaction().commit();
		System.out.println("Student Updated in Database...!");	
		return getAllStudents();
	}

	public List<Student> deleteStudent(int sid) {
		Session session =factory.openSession();
		Student stu = session.get(Student.class, sid);
		session.delete(stu);
		session.beginTransaction().commit();
		System.out.println("Student Deleted...!");	
		return getAllStudents();
	}
}
