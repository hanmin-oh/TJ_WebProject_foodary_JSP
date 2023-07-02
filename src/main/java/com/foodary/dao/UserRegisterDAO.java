package com.foodary.dao;

import org.apache.ibatis.session.SqlSession;

import com.foodary.vo.UserRegisterVO;

public class UserRegisterDAO {
	
	private static UserRegisterDAO instance = new UserRegisterDAO();

    private UserRegisterDAO() {    }

    public static UserRegisterDAO getInstance () {
        return instance;
    }

	public void insertregister(SqlSession mapper, UserRegisterVO vo) {
		System.out.println("UserRegisterDAO의 insertregister()");
		System.out.println(vo);
		mapper.insert("insertRegister", vo);
	}
	
//  UserRegisterService에서 넘어온 idx를 처리하는 dao 메소드   
	public UserRegisterVO selectByIdx(SqlSession mapper, int idx) {
     System.out.println("UserRegisterDAO 클래스의 selectByIdx() 메소드 실행");
     return (UserRegisterVO) mapper.selectOne("selectByIdx", idx);
  }

   
}
   










