package com.foodary.service;

import org.apache.ibatis.session.SqlSession;

import com.foodary.dao.UserRegisterDAO;
import com.foodary.mybatis.MySession;
import com.foodary.vo.UserRegisterVO;

public class UserRegisterService {
	
	private static UserRegisterService instance = new UserRegisterService();

    private UserRegisterService() {    }

    public static UserRegisterService getInstance () {
        return instance;
    }
    
    public void insertregister(UserRegisterVO vo) {
    	System.out.println("UserRegisterService의 insert()");
		SqlSession mapper = MySession.getSession();
		System.out.println(mapper);
		System.out.println(vo);
		UserRegisterDAO.getInstance().insertRegister(mapper, vo);
		mapper.commit();
		mapper.close();
	}
    
    public UserRegisterVO selectByIdx(int idx) {
        System.out.println("UserRegisterService 클래스의 selectByIdx()");
        SqlSession mapper = MySession.getSession();
        UserRegisterVO vo = null;
        vo = UserRegisterDAO.getInstance().selectByIdx(mapper, idx);
        System.out.println(vo);
        return vo;
  }
    
}
