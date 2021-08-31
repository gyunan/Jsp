<%@page import="kr.co.Farmstory1.dao.MemberDao"%>
<%@page import="kr.co.Farmstory1.db.Sql"%>
<%@page import="kr.co.Farmstory1.db.DBConfig"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송데이터 수신
	request.setCharacterEncoding("UTF-8");
	String email = request.getParameter("email");
	
	int result = MemberDao.getInstance().selectCountUserInfo(3, email);

	// Json 출력
	JsonObject json = new JsonObject();
	json.addProperty("result", result);
	out.print(json);
%>
