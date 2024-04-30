package com.student.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.student.vo.StudentVO;

public class StudentDao {

	public List<StudentVO> selectAllStudent(SqlSession session) {
		List<StudentVO> list = session.selectList("student.selectAllStudent");
		return list;
	}

	public int insertStudent(SqlSession session, StudentVO vo) {
		int result = session.insert("student.insertStudent", vo);
		return result;
	}

	public int updateStudent(SqlSession session, String studentNo) {
		int result = session.update("student.updateStudent", studentNo);
		return result;
	}

}
