package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.ClassDAOImpl;
import dao.impl.StudentDAOImpl;
import entities.Class;

/**
 * Servlet implementation class initInsertStudent
 */
@WebServlet("/initInsertStudent")
public class initInsertStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public initInsertStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Class> classs = new ClassDAOImpl().getClasss();
		request.setAttribute("listC", classs);
		request.getRequestDispatcher("insertStudent.jsp").forward(request, response);
		/*
		 * List<Department> departments = new DepartmentDAOImpl().getDepartments();
		 * request.setAttribute("listD", departments);
		 * request.getRequestDispatcher("insertEmployee.jsp").forward(request,
		 * response);
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
