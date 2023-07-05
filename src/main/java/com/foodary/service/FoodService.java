package com.foodary.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.foodary.dao.FoodDAO;
import com.foodary.mybatis.MySession;
import com.foodary.vo.FoodList;
import com.foodary.vo.UserFoodList;
import com.foodary.vo.UserFoodVO;


public class FoodService {
	
	  private static FoodService instance = new FoodService();

	    private FoodService() {    }

	    public static FoodService getInstance () {
	        return instance;
	    }
	    
	    public FoodList selectList(int currentPage) {
			System.out.println("FoodService의 selectList()");
			SqlSession mapper = MySession.getSession();
			FoodDAO dao = FoodDAO.getInstance();
			
			int pageSize = 10;
			int totalCount = dao.selectCount(mapper);
			
			FoodList foodList = new FoodList(pageSize, totalCount, currentPage);
			HashMap<String, Integer> hmap = new HashMap<>();
			hmap.put("startNo", foodList.getStartNo());
			hmap.put("endNo", foodList.getEndNo());
			foodList.setList(dao.selectList(mapper, hmap));
			
			mapper.close();
			return foodList;
		}
	    
	    public void insertFood(UserFoodVO vo) {
	    	System.out.println("UserRegisterService의 insert()");
			SqlSession mapper = MySession.getSession();
			System.out.println(mapper);
			System.out.println(vo);
			FoodDAO.getInstance().insertFood(mapper, vo);
			mapper.commit();
			mapper.close();
		}
	    
	    public UserFoodList userSelectList(UserFoodVO vo) {
	    	System.out.println("FoodService의 writeSelectList()");
	    	System.out.println(vo);
	    	SqlSession mapper = MySession.getSession();
	    	UserFoodList writeFoodList  = new UserFoodList();
	    	writeFoodList.setList(FoodDAO.getInstance().userSelectList(mapper,vo));
			System.out.println(writeFoodList);
			mapper.close();
			return writeFoodList;
	    }
	    
	    
	    
	    
}
