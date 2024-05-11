package com.mybatis.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.vo.Student;
import com.mybatis.model.vo.Student2;

public class StudentDao {

	public int insertStudent(SqlSession session) {
		//mybatis에서 sql문을 실행할때는
		//sqlsession이 제공하는 메소드를 이용한다
		//insert(), update(), delete(), selectOne() -> pk값으로 where를 날릴때 씀, selectList() -> 그외 여러개 가져올떄
		//인수값은 mapper정보, sql정보를 string으로 전달 -> mapper.xml에서 설정
		//외부에서 전달된 데이터가 있으면 필요한 값을 전달
		
		//mapper태그의 namespace명.sql태그의 id명으로 string 인수로 쓴다.
		int result = session.insert("student.insertStudent");
		return result;
	}

	public int insertStudentbyname(SqlSession session, String name) {
		return session.insert("student.insertStudentbyname", name);
	}

	public int insertStudentAll(SqlSession session, Student vo) {
		return session.insert("student.insertStudentAll", vo);
	}

	public int selectStudentCount(SqlSession session) {
		/*
		 * 조회할때엔 
		 * selectOne() : 조회결과(resultset)이 0~1개 row를 가질때 사용
		 * selectList() : 조회결과가 0~1개 이상의 row를 가질때 사용
		 */
		return session.selectOne("student.selectStudentCount");
	}

	public Student selectStudentByNo(SqlSession session, int studentNo) {
		return session.selectOne("student.selectStudentByNo", studentNo);
	}

}
