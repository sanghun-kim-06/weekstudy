package com.student.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.service.StudentService;
import com.student.vo.StudentVO;


/**
 * Servlet implementation class InsertStudentServlet
 */
@WebServlet("/student/insertstudent.do")
public class InsertStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		StudentVO vo = new StudentVO(0
				, request.getParameter("name")
				, Integer.parseInt(request.getParameter("age"))
				, Integer.parseInt(request.getParameter("grade"))
				, Integer.parseInt(request.getParameter("classnumber"))
				, Integer.parseInt(request.getParameter("height"))
				, request.getParameter("address")
				, request.getParameter("phone")
				, request.getParameter("gender"));
		int result = new StudentService().insertStudent(vo);
		response.sendRedirect(request.getContextPath()+"/student/searchall.do");
	}

}
