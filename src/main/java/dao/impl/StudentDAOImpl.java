package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.StudentDAO;
import db.DBUtility;
import entities.Student;
import entities.dto.StudentDTO;

public class StudentDAOImpl implements StudentDAO{

	@Override
	public List<StudentDTO> getStudent() {
		List<StudentDTO> list = new ArrayList();
		
		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;
		
		con = DBUtility.getConnection();
		try {
			pstmt = con.prepareStatement("SELECT s.*, c.Class_name FROM Student s join Class c on s.Class_id = c.id");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				StudentDTO sdto = new StudentDTO();
				Student s = new Student();
				s.setId(rs.getInt("Id"));
				s.setName(rs.getString("Name"));
				s.setGender(rs.getBoolean("Gender"));
				s.setBirthday(rs.getDate("Birthday"));
				s.setAddress(rs.getString("Address"));
				s.setEmail(rs.getString("Email"));
				s.setClass_id(rs.getInt("Class_id"));
				sdto.setStudent(s);
				sdto.setClass_name(rs.getString("Class_name"));
				list.add(sdto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtility.closeConnection(con);
		}
		return list;
	}

}
