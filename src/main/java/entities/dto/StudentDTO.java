package entities.dto;

import entities.Student;

public class StudentDTO{
	private Student student;
	private String class_name;
	
	public StudentDTO() {
		// TODO Auto-generated constructor stub
	}

	public StudentDTO(Student student, String class_name) {
		super();
		this.student = student;
		this.class_name = class_name;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	
	
}
