package com.foodary.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.foodary.vo.DietVO;
import com.foodary.vo.FoodVO;
import com.foodary.vo.UserRegisterVO;
import com.foodary.vo.WriteFoodVO;

public class FoodDAO {
	
	 private static FoodDAO instance = new FoodDAO();

	    private FoodDAO() {    }

	    public static FoodDAO getInstance () {
	        return instance;
	    }

		public int selectCount(SqlSession mapper) {
			System.out.println("FoodDAO의 selectCount()");
			return (int) mapper.selectOne("selectCount");
		}
		
		public ArrayList<FoodVO> selectList(SqlSession mapper, HashMap<String, Integer> hmap) {
			System.out.println("FoodDAO의 selectList()");
			return (ArrayList<FoodVO>) mapper.selectList("selectList", hmap);
		}

		public void insertFood(SqlSession mapper, WriteFoodVO vo) {
			System.out.println("FoodDAO의 insertFood()");
			System.out.println(vo);
			mapper.insert("insertFood", vo);
		}

		public ArrayList<WriteFoodVO> writeSelectList(SqlSession mapper, WriteFoodVO vo) {
			System.out.println("FoodDAO 클래스의 writeSelectList()");		
			return (ArrayList<WriteFoodVO>) mapper.selectList("writeSelectList", vo);
		}
		
}
