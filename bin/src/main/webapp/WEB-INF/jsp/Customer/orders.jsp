<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:customerLayout>
	<div class="order-body">
           <h1 id="body-heading">ORDERS</h1>
           <br />
           <h3 style="color:green"> ${paymentStatus} </h3>
                
            <div class="order-each-item">
            
                <c:forEach var="order" items="${orders}" varStatus="status">
                <div class="order-item-container">
                    <div class="order-details">
                        <div class="order-details-left">
                            <h1>${order.name}</h1>
                            <p><i>Address: </i> ${order.address}</p>
                            <p><i>Contact: </i> ${order.contactNumber}</p>
                        </div>

                        <div class="order-details-right">
                            <h3><span>Order No:</span> ${order.id}</h3>

                            <h2><span>Total:  </span>&#8377 ${order.totalPrice}</h2>
                        </div>

                    </div>

                    <div class="order-items-group">
                        <c:forEach var="orderItem" items="${order.orderItems}" varStatus="status">
                            <div class="cart-item-container">
                                <img  src="${orderItem.productId.imageUrl}" alt="" />
                                <div class="cart-item-main-details">
                                    <h1>${orderItem.productName}</h1>
                                    <h2>&#8377 ${orderItem.price}</h2>
                                    <h3><span class="grey">Quantity - </span>${orderItem.quantity}</h3>
                                </div>
                                <div class="cart-item-btns">
                                    <div class="cart-item-btn-group">
                                        <a class="actionlink" href="/getProduct/${orderItem.productId.productId}">View</a>
                                    </div>
                                </div>
                            </div>
                    
                        </c:forEach>   
                    </div>
                </div>
                </c:forEach>   
            </div>          

    </div>
</t:customerLayout>

