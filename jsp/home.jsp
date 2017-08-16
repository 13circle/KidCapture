<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="CSS/home_style.css">
	<title>유치원</title>
	<style>
	</style>
</head>
<body>

<nav class="navbar-navbar-inverse">
  <div class="container-fluid">
 	<ul class="nav-navbar-nav">  
      <li class="active"><a href="home.jsp">Home</a></li>
      <li class="active"><a href="student.jsp">학생목록</a></li>
      <li class="active"><a href="teacher.jsp">선생 목록</a></li>
 	  <li class="active"><a href="picture.jsp">사진 관리</a></li>
    </ul>
  </div>
  
<div class="nav-button">
	<div class="formclass">
		<form action="LOGOUT.jsp" method="post">
		<button> 로그아웃 </button></form>
	</div>
	<div class="button2">
		<button onClick="location.href='CHANGEPROFILE.jsp'"> 개인정보 변경</button>
	</div>
</div>
</nav>

</body>
</html>