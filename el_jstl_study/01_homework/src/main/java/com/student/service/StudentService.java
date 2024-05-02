package com.student.service;

import static com.mybatis.common.SqlSessionTemplate.getSession;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.common.SqlSessionTemplate;
import com.student.dao.StudentDao;
import com.student.vo.StudentVO;

public class StudentService {
	private StudentDao dao = new StudentDao();
	
	public List<StudentVO> selectAllStudent() {
		SqlSession session = getSession();
		List<StudentVO> list = dao.selectAllStudent(session);
		//트랜잭션 처리
		if(!list.isEmpty()) session.commit();
		else session.rollback();
		session.close();
		return list;
	}
	
	public List<StudentVO> searchByName(String studentName) {
		SqlSession session = getSession();
		List<StudentVO> list = dao.searchByName(session, studentName);
		if(!list.isEmpty()) session.commit();
		else session.rollback();
		session.close();
		return list;
	}

	public int insertStudent(StudentVO vo) {
		SqlSession session = getSession();
		int result = dao.insertStudent(session, vo);
		if(result > 0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}
	
	public List<StudentVO> updateListStudent(String studentNo) {
		SqlSession session = getSession();
		List<StudentVO> list = dao.updateListStudent(session, studentNo);
		//트랜잭션 처리
		if(!list.isEmpty()) session.commit();
		else session.rollback();
		session.close();
		return list;
	}

	public int updateStudent(StudentVO vo) {
		SqlSession session = getSession();
		int result = dao.updateStudent(session, vo);
		if(result > 0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}

	public int deleteStudent(int studentNo) {
		SqlSession session = getSession();
		int result = dao.deleteStudent(session, studentNo);
		if(result > 0) session.commit();
		else session.rollback();
		return result;
	}

	public List<StudentVO> searchByGrade(int grade) {
		SqlSession session = getSession();
		List<StudentVO> list = dao.searchByGrade(session, grade);
		if(!list.isEmpty()) session.commit();
		else session.rollback();
		session.close();
		return list;
	}
}
