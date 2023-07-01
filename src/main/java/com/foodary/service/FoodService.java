package com.foodary.service;

import com.foodary.dao.FoodDAO;
import com.foodary.mybatis.MySession;
import com.foodary.vo.FoodList;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;


public class FoodService {
	
	  private static FoodService instance = new FoodService();

	    private FoodService() {    }

	    public static FoodService getInstance () {
	        return instance;
	    }
	    
	    public FoodList selectList(int currentPage) {
			System.out.println("FreeboardService의 selectList()");
			SqlSession mapper = MySession.getSession();
			FoodDAO dao = FoodDAO.getInstance();
			
			int pageSize = 10;
			int totalCount = dao.selectCount(mapper);
			System.out.println(totalCount);
			
			FoodList foodList = new FoodList(pageSize, totalCount, currentPage);
			HashMap<String, Integer> hmap = new HashMap<>();
			hmap.put("startNo", foodList.getStartNo());
			hmap.put("endNo", foodList.getEndNo());
			foodList.setList(dao.selectList(mapper, hmap));
			System.out.println(foodList);
			
			mapper.close();
			return foodList;
		}
	    
	    
}
