package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ClassDAO;
import db.DBUtility;
import entities.Class;

public class ClassDAOImpl implements ClassDAO{

	@Override
	public List<Class> getClasss() {
		List<Class> listC = new ArrayList<Class>();
		
		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;
		
		con = DBUtility.getConnection();
		try {
			pstmt = con.prepareStatement("Select * from Class");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Class c = new Class();
				c.setId(rs.getInt("Id"));
				c.setClass_name(rs.getString("Class_name"));
				listC.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtility.closeConnection(con);
		}
		return listC;
	}

}
