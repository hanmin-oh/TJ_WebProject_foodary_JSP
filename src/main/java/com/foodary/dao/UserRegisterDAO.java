package com.foodary.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.foodary.vo.UserRegisterVO;

public class UserRegisterDAO {
   
   private Connection conn = null;
   private PreparedStatement pstmt = null;
   private ResultSet rs = null;
   
   public UserRegisterDAO() {
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         String url = "jdbc:oracle:thin:@localhost:1521:xe";
         conn = DriverManager.getConnection(url, "tjoeunit", "0000");
      } catch (ClassNotFoundException e) {
         System.out.println("드라이버 클래스가 없거나 읽어올 수 없습니다.");
      } catch (SQLException e) {
         System.out.println("데이터베이스 연결 정보가 올바르지 않습니다.");
      }
   }

   public int register(UserRegisterVO vo) {
      System.out.println("RegisterDAO 클래스의 register()");
      System.out.println(vo);
      try {
         String sql = "insert into userregister (username, id, password, email, gender, height, age, currentWeight, goalWeight, active, state) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
         pstmt = conn.prepareStatement(sql);
         
         pstmt.setString(1, vo.getUsername());
         pstmt.setString(2, vo.getId());
         pstmt.setString(3, vo.getPassword());
         pstmt.setString(6, vo.getEmail());
         pstmt.setString(5, vo.getGender());
         pstmt.setInt(7, vo.getHeight());
         pstmt.setString(4, vo.getAge());
         pstmt.setInt(8, vo.getCurrentWeight());
         pstmt.setInt(9, vo.getGoalWeight());
         pstmt.setString(10, vo.getActive());
         pstmt.setString(11, vo.getState());
         return pstmt.executeUpdate();
         
      } catch(SQLException e) {
         e.printStackTrace();
         System.out.println("중복되는 아이디가 입력되었습니다.");
      }
      
      return 0;
      
   }

   public int registerCheck(String id) {
      System.out.println("RegisterDAO 클래스의 registerCheck()");
      
      try {
         String sql = "select * from userregister where trim(id) = ?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, id);
         rs = pstmt.executeQuery();
         
         if(id.trim().equals("")) {
            // 중복 검사할 아이디를 입력하지 않고 중복 체크 버튼을 클릭한 경우
            return 1;
         } else if(rs.next()) {
            // 사용중인 아이디일 경우
            return 2;
         } else {
            // 사용가능한 아이디일 경우
            return 3;
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return 0;
   };
   
}
   










