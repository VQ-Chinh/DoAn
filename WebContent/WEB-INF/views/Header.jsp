<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="background: #E0E0E0; height: 55px; padding: 5px; border: 1px solid black;">
  <div style="float: left">
     <h1 style="margin: 5px;">My Site</h1>
  </div>
 
  <div style="float: right; padding: 10px; text-align: right;">
     <!-- User store in session with attribute: loginedUser -->
    Xin Chào <b>${loginedUser.getMaGiaoVien()}</b> <br>
    <a href="">Đăng xuất</a>
  </div>
  
</div>