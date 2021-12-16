<%@page import="java.util.ResourceBundle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="loginValidation.jsp" %>

<div id="customer-header">
	<h1 class="header-logo"><a href="/adminHome">HappyBuy</a></h1>

	<div class="customer-header-right">
		<h2> <a class="customer-header-btn" href="/allOrders">All Orders</a></h2>
		<h2> <a class="customer-header-btn" href="/addProduct">Add Product</a></h2>
		<!-- <h2 style="padding:3px">
			${username}
		</h2> -->
		<form action="/logout"  method="post">
			<input type="submit" class="logout-btn" value="Logout">
		</form>
	</div>
</div>
