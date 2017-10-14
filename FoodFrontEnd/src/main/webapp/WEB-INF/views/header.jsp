<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script> 
    <script src="resources/js/bootstrap.min.js">
    </script>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>


<body>

  <nav class="navbar navbar-inverse navbar-fixed-header">
    <div class="container-fluid">
      <div class="navbar-header ">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          
        </button>
        <a class="navbar-brand" href="#">WebSiteName</a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>


          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">MEALS
            <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">Page 1-1</a></li>
              <li><a href="#">Page 1-2</a></li>
              <li><a href="#">Page 1-3</a></li>
            </ul>
          </li>

          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">DRINKS<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">Page 1-1</a></li>
              <li><a href="#">Page 1-2</a></li>
              <li><a href="#">Page 1-3</a></li>
            </ul>
          </li>

          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="admin/addPro">Add product</a></li>
              <li><a href="admin/addPro">Add Category</a></li>
              <li><a href="admin/addPro">Add Supplier</a></li>
            </ul>
          </li>

          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Views<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="${pageContext.request.contextPath}/admin/viewProductList">ProductList</a></li>
              <li><a href="${pageContext.request.contextPath}/admin/ViewCate">ViewCategory</a></li>
              <li><a href="${pageContext.request.contextPath}/admin/ViewSupplier">ViewSupplier</a></li>
            </ul>
            
             <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li>
              <c:forEach items="${cat}" var="cate">
   <li value="${cate.catid}"> <a href="${pageContext.request.contextPath}/viewCatPro/${cate.catid}">${cate.categoryname}</a></li>
              </c:forEach>
            </ul>
         
          </li>
          
          
        
  
          <security:authorize access="hasAuthority('ADMIN')">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="/#/"><span
					class="glyphicon glyphicon-user"></span> ADMIN<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
							
				</ul></li>
				</security:authorize>
				
				<li>
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
				<h2>Hi :${pageContext.request.remoteUser}</h2>
				<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li><br>
				</c:if>
				</li>
				
				
	
        </ul>
        
       
        <ul class="nav navbar-nav navbar-right">
         <li><a href="${pageContext.request.contextPath}/admin/addPro"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          <li><a href="${pageContext.request.contextPath}/Registeruser"><span class="glyphicon glyphicon-log-in"></span>SignUp</a></li>
         
        </ul>

      </div>
    </div>
  </nav>



</body>
</html>