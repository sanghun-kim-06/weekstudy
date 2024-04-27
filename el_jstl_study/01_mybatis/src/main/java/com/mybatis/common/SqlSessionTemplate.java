package com.mybatis.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;

public class SqlSessionTemplate {
	public static SqlSession getSession() {
		//SqlSession생성하기
		//1. SqlSessionFactory 클래스에서 제공하는 openSession()메소드를 이용해서 생성
		//	-sqlSessionFactory 클래스는 SqlSessionFactoryBuilder클래스를 이용해서 생성
		//		 -sqlSessionFactoryBuilder클래스의 build()메소드를 이용
		//			 -build()메소드의 인수로 mybatis-config.xml파일 내용을전달
		String fileName = "mybatis-config.xml";
		SqlSession session = null; //임포트 단축키 ctrl + shift + o , 임포트 안되면 위에 하나하나 치기..ㅜ
		try(InputStream is = Resources.getResourceAsStream(fileName);) {
			//mybatis-config.xml 파일에 스트림연결 -> 스트림객체 생성
//			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
//			SqlSessionFactory sf = ssfb.build(is);
//			//openSession()의 인수로 boolean형 -> t/f
//			//autoCommit(DML 구문이 될때마다 바로 커밋하는 것)에 대한 설정, 트랜잭션 처리를 위해 보통 false(오토커밋 하지않음)으로 설정함 
//			session = sf.openSession(false);
			
			session = new SqlSessionFactoryBuilder().build(is).openSession(false);
		}catch (IOException e) {
			e.printStackTrace();
		}
		return session;
	}

}
