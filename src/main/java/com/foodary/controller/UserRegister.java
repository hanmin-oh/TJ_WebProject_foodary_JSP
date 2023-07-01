package com.foodary.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foodary.dao.FoodDAO;
import com.foodary.mybatis.MySession;
import com.foodary.vo.FoodList;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;



import com.foodary.dao.UserRegisterDAO;
import com.foodary.vo.UserRegisterVO;

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public UserRegister() {
        super();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      actionDo(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      actionDo(request, response);
   }
   
   protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      
      String id = request.getParameter("id").trim();
      String password = request.getParameter("password").trim();
      String passwordCheck = request.getParameter("passwordCheck").trim();
      String userName = request.getParameter("userName").trim();
      String age = request.getParameter("age").trim();
      String gender = request.getParameter("gender").trim();
      String email = request.getParameter("email").trim();
      int height = Integer.parseInt(request.getParameter("height"));
      int currentWeight = Integer.parseInt(request.getParameter("currentWeight"));
      int goalWeight = Integer.parseInt(request.getParameter("goalWeight"));
      String active = request.getParameter("active");
      String state = request.getParameter("state");
      
      // 아이디 입력 체크
      if(id == null || id.equals("") || 
            password == null || password.equals("") ||
            passwordCheck == null || passwordCheck.equals("") ||
            userName == null || userName.equals("") ||
            age == null || age.equals("") ||
            gender == null || gender.equals("") ||
            email == null || email.equals("")) {
         
         // 입력 체크 실패 메시지를 session에 저장한다.
         // request.getSession(): 서블릿에서 session을 얻어온다.
         // request.getSession().setAttribute("messageType", "오류 메시지"); // 1
         // request.getSession().setAttribute("messageContent", "모든 내용을 입력하세요."); // 1
         // response.sendRedirect("index.jsp");
         
         // 입력 체크 성공 여부에 따른 메시지를 ajax로 넘겨준다.
         response.getWriter().write("1"); // 2
         
         
         return; // 입력 데이터에 오류가 있으므로 서블릿을 종료한다.
      } 
      // 비밀번호 체크
      if(!password.equals(passwordCheck)) {
         // 비밀번호 불일치 메시지를 session에 저장한다.
         // request.getSession().setAttribute("messageType", "오류 메시지"); // 1
         // request.getSession().setAttribute("messageContent", "비밀번호가 일치하지 않습니다."); // 1
         // response.sendRedirect("index.jsp");
         
         // 비밀번호 입력 체크 성공 여부에 따른 메시지를 ajax로 넘겨준다.
         response.getWriter().write("2");
         return; // 입력 데이터에 오류가 있으므로 서블릿을 종료한다.
      } 
      
      // 넘어온 데이터가 정상이므로 RegisterVO 클래스 객체를 만들어 저장한다.
     UserRegisterVO vo = new UserRegisterVO();
      
      vo.setId(id);
      vo.setPassword(password);
      vo.setUsername(userName);
      vo.setAge(age);
      vo.setGender(gender);
      vo.setEmail(email);
      vo.setActive(active);
      vo.setCurrentWeight(currentWeight);
      vo.setGoalWeight(goalWeight);
      vo.setHeight(height);
      vo.setState(state);
      
      SqlSession mapper = MySession.getSession();
      int result = UserRegisterDAO.getInstance().idCheck(mapper);
      response.getWriter().write(result + "");
      
   }
}











