package com.foodary.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.foodary.vo.DietVO;

public class DietDAO {

	private static DietDAO instance = new DietDAO();
	private DietDAO() { }
	public static DietDAO getInstance() {
		return instance;
	}
	
//	DietService 클래스에서 호출되는 mapper와 메인글이 저장되는 객체를 넘겨받고 diet.xml 파일의
//	insert sql 명령을 실행하는 메소드
	public void insert(SqlSession mapper, DietVO dietvo) {
		System.out.println("DietDAO 클래스의 insert()");
		System.out.println(dietvo);
		mapper.insert("dietInsert", dietvo);
	}
	
	public ArrayList<DietVO> selectDiet(SqlSession mapper, String d) {
		System.out.println("DietDAO 클래스의 selectDiet()");
		return (ArrayList<DietVO>) mapper.selectList("selectDiet", d);
	}
	
	public ArrayList<DietVO> selectDietList(SqlSession mapper, String dietWriteDate) {
		System.out.println("DietDAO 클래스의 selectDietList()");
		return (ArrayList<DietVO>) mapper.selectList("selectDietList", dietWriteDate);
	}
	
	
	
}
