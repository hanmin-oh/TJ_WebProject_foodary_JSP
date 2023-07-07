package com.foodary.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.foodary.vo.FoodVO;
import com.foodary.vo.UserFoodVO;

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

		

		public ArrayList<FoodVO> search(SqlSession mapper , String name) {
			System.out.println("search() 실행");
			System.out.println(name);
			return (ArrayList<FoodVO>) mapper.selectList("search", name);
		}
		
}
