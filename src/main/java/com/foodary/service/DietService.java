package com.foodary.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.foodary.dao.DietDAO;
import com.foodary.mybatis.MySession;
import com.foodary.vo.DietList;
import com.foodary.vo.DietVO;

public class DietService {

	private static DietService instance = new DietService();
	private DietService() { }
	public static DietService getInstance() {
		return instance;
	}
	
//	dietList.jsp에서 호출되는 메인글이 저장된 객체를 넘겨받고 mapper를 얻어온 후 메인글을
//	저장하는 DietDAO 클래스의 insert sql 명령을 실행하는 메소드 호출하는 메소드
	public void insert(DietVO dietvo) {
		System.out.println("DietService의 insert()");
		SqlSession mapper = MySession.getSession();
		System.out.println(mapper);
		DietDAO.getInstance().insert(mapper, dietvo);
		mapper.commit();
		mapper.close();
	}
	
	public DietList selectDiet(String date) {
		System.out.println("DietService의 selectDiet()");
		SqlSession mapper = MySession.getSession();
		System.out.println(mapper);
		System.out.println(date);
		DietList dietList = new DietList();
		dietList.setList(DietDAO.getInstance().selectDiet(mapper, date));
		System.out.println(dietList);
		mapper.close();
		return dietList;
	}

}
