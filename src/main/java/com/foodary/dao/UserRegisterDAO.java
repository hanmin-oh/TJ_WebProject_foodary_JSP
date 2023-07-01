package com.foodary.dao;

import org.apache.ibatis.session.SqlSession;

public class UserRegisterDAO {
	 private static UserRegisterDAO instance = new UserRegisterDAO();

	    private UserRegisterDAO() {    }

	    public static UserRegisterDAO getInstance () {
	        return instance;
	    }

		public int idCheck(SqlSession mapper) {
			return (int) mapper.selectOne("idCheck");
		}


}
