<%@ tag description="Home Wrapper Tag" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> ${title} | HappyBuy</title>
        
<link href="${contextPath}/resources/css/style.css" rel="stylesheet" />
        <link href="${contextPath}/resources/css/customer/header.css" rel="stylesheet" />		
		<link href="${contextPath}/resources/css/style.css" rel="stylesheet" />		
		<link href="${contextPath}/resources/css/customer/home.css" rel="stylesheet" />		
        <link href="${contextPath}/resources/css/customer/productDetails.css" rel="stylesheet" />		
        <link href="${contextPath}/resources/css/customer/cart.css" rel="stylesheet" />		
        <link href="${contextPath}/resources/css/customer/order.css" rel="stylesheet" />		
        <link href="${contextPath}/resources/css/login.css" rel="stylesheet" />		


      
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
</head>
    <body>
    		<jsp:include page="${contextPath}/WEB-INF/jsp/admin/loginValidation.jsp" />	
    
        <div>
            <div>
                <jsp:include page="${contextPath}/WEB-INF/jsp/customer/header.jsp" />
            </div>
            <div class="jsp-body">
                <jsp:doBody/>
            </div>
            <div>
                <jsp:include page="${contextPath}/WEB-INF/jsp/footer.jsp" />
            </div>
        </div>
        
    </body>
</html>