package com.student.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.service.StudentService;
import com.student.vo.StudentVO;

/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/student/updatestudent.do")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		StudentService service = new StudentService(); 
		List<StudentVO> list = service.updateListStudent(request.getParameter("studentNo"));
		System.out.println(list.get(0).getStudentName());
		request.setAttribute("vo", list.get(0));
		request.getRequestDispatcher("/view/updateStudent.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		StudentVO vo = new StudentVO(Integer.parseInt(request.getParameter("studentNo"))
				, request.getParameter("name")
				, Integer.parseInt(request.getParameter("age"))
				, Integer.parseInt(request.getParameter("grade"))
				, Integer.parseInt(request.getParameter("classnumber"))
				, Integer.parseInt(request.getParameter("height"))
				, request.getParameter("address")
				, request.getParameter("phone")
				, request.getParameter("gender"));
		int result = new StudentService().updateStudent(vo);
		response.sendRedirect(request.getContextPath()+"/student/searchall.do");
	}

}
