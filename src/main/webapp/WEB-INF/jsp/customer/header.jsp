<%@page import="java.util.ResourceBundle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="loginValidation.jsp" %>

<div id="customer-header">
	<h1 class="header-logo"><a href="/home">HappyBuy</a></h1>

	<div class="customer-header-right">
		<h2> <a class="customer-header-btn" href="/orders">My Orders</a></h2>
		<h2> <a class="customer-header-btn" href="/cart">Cart</a></h2>
		<!-- <h2 style="padding:3px">
			${username}
		</h2> -->
		<form action="/logout"  method="post">
			<input type="submit" class="logout-btn" value="Logout">
		</form>
	</div>
</div>

