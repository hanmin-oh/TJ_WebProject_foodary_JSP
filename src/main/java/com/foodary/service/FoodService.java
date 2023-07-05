package com.foodary.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.foodary.dao.DietDAO;
import com.foodary.dao.FoodDAO;
import com.foodary.mybatis.MySession;
import com.foodary.vo.DietList;
import com.foodary.vo.FoodList;
import com.foodary.vo.FoodVO;
import com.foodary.vo.WriteFoodList;
import com.foodary.vo.WriteFoodVO;


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
	    
	    public void insertFood(WriteFoodVO vo) {
	    	System.out.println("UserRegisterService의 insert()");
			SqlSession mapper = MySession.getSession();
			System.out.println(mapper);
			System.out.println(vo);
			FoodDAO.getInstance().insertFood(mapper, vo);
			mapper.commit();
			mapper.close();
		}
	    
	    public WriteFoodList writeSelectList(WriteFoodVO vo) {
	    	System.out.println("FoodService의 writeSelectList()");
	    	System.out.println(vo);
	    	SqlSession mapper = MySession.getSession();
	    	WriteFoodList writeFoodList  = new WriteFoodList();
	    	writeFoodList.setList(FoodDAO.getInstance().writeSelectList(mapper,vo));
			System.out.println(writeFoodList);
			mapper.close();
			return writeFoodList;
	    }
	    
	    
	    
	    
}
