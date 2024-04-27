package com.mybatis.controller;

import java.io.IOException;
import static com.mybatis.common.SqlSessionTemplate.getSession;
import org.apache.ibatis.session.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConnectTestServlet
 */
@WebServlet("/connecttest.do")
public class ConnectTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnectTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//mybatis DB에 접속하기
		//mybatis.jar에서 제공하는 SqlSession클래스를 사용
		//template클래스를 이용해서 생성
		SqlSession session = getSession(); //static 메소드 임포트
		System.out.println(session);
		
		//메인화면 이동
		response.sendRedirect(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
