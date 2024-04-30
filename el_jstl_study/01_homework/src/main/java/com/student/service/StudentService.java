package com.student.service;

import static com.mybatis.common.SqlSessionTemplate.getSession;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

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

	public int insertStudent(StudentVO vo) {
		SqlSession session = getSession();
		int result = dao.insertStudent(session, vo);
		if(result > 0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}
	
	public int updateStudent(String studentNo) {
		SqlSession session = getSession();
		int result = dao.updateStudent(session, studentNo);
		if(result > 0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}
}
