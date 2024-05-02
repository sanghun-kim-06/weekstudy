package com.student.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.student.vo.StudentVO;

public class StudentDao {

	public List<StudentVO> selectAllStudent(SqlSession session) {
		List<StudentVO> list = session.selectList("student.selectAllStudent");
		return list;
	}
	
	public List<StudentVO> searchByName(SqlSession session, String studentName) {
		List<StudentVO> list = session.selectList("student.searchByName", studentName);
		return list;
	}

	public int insertStudent(SqlSession session, StudentVO vo) {
		int result = session.insert("student.insertStudent", vo);
		return result;
	}

	public List<StudentVO> updateListStudent(SqlSession session, String studentNo) {
		return session.selectList("student.updateListStudent", Integer.parseInt(studentNo));
	}

	public int updateStudent(SqlSession session, StudentVO vo) {
		return session.update("student.updateStudent", vo);
	}

	public int deleteStudent(SqlSession session, int studentNo) {
		return session.delete("student.deleteStudent", studentNo);
	}

	public List<StudentVO> searchByGrade(SqlSession session, int grade) {
		return session.selectList("student.searchByGrade", grade);
	}

}
