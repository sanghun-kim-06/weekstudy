package com.mybatis.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.service.StudentService;
import com.mybatis.model.vo.Student;

/**
 * Servlet implementation class InsertStudentAllServlet
 */
@WebServlet("/student/insertstudentall.do")
public class InsertStudentAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertStudentAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getParameter는 무조건 반환값이 String
		//getParameterVaules는 무조건 반환값이 String[]
		request.setCharacterEncoding("UTF-8");
		StudentService service = new StudentService();
		String name = request.getParameter("name");
		long tel = Long.parseLong(request.getParameter("tel"));
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		Student vo = new Student(name, tel, email, address);
		int result = new StudentService().insertStudentAll(vo);
		response.getWriter().append(result > 0 ? "success" : "fail");
	}

}
