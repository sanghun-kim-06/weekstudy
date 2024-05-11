package com.mybatis.model.service;

import static com.mybatis.common.SqlSessionTemplate.getSession;
import org.apache.ibatis.session.*;

import com.mybatis.model.dao.StudentDao;
import com.mybatis.model.vo.Student;
import com.mybatis.model.vo.Student2;

public class StudentService {
	private StudentDao dao = new StudentDao();
	
	public int insertStudent() {
		SqlSession session = getSession();
		int result = dao.insertStudent(session);
		//트랜잭션 처리
		if(result > 0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}

	public int insertStudentbyname(String name) {
		SqlSession session = getSession();
		int result = dao.insertStudentbyname(session, name);
		if(result > 0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}

	public int insertStudentAll(Student vo) {
		SqlSession session = getSession();
		int result = dao.insertStudentAll(session, vo);
		if(result > 0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}

	public int selectStudentCount() {
		SqlSession session = getSession();
		int result = dao.selectStudentCount(session);
		session.close();
		return result;
	}

	public Student selectStudentByNo(int studentNo) {
		SqlSession session = getSession();
		Student s = dao.selectStudentByNo(session, studentNo);
		session.close();
		return s;
	}

}
