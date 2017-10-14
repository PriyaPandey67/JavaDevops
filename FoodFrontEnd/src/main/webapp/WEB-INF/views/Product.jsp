<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


	<div class="container">
    <div class="row">
    	<div class="col-md-12">
    	<c:forEach var="pro" items="${catlist}">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">${pro.productname}</span></h4>
					<!--  <img src="${pageContext.request.contextPath}/resources/${pro.productid}.png" height="300px" width="150px">
                    -->
                    <a href="${pageContext.request.contextPath}/viewProDes/${pro.productid}"><img src="${pageContext.request.contextPath}/resources/${pro.productid}.png" height="300px" width="150px"></a>
                    
					<div class="caption">
						<div class="row">
							<div class="col-md-6 col-xs-6">
								<h3>${pro.productname}</h3>
							</div>
							<div class="col-md-6 col-xs-6 price">
								<h3>
								<label>${pro.price}</label></h3>
							</div>
						</div>
						<p>${pro.description}</p>
						<!--  <div class="row">
							 <div class="col-md-6">
								<a class="btn btn-primary btn-product"  > Continue Shopping</a> 
							</div>
							 
							<div class="col-md-6">
								<a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</a></div>
						</div>-->

				
					</div>
				</div>
			</div>
			</c:forEach>
			            
        </div> 

	</div>
</div>
</body>
</html>