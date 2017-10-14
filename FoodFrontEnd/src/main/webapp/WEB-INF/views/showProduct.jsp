<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Product List</h1> 
<table border="2" width="70%" cellpadding="2">  
<tr><th>Product id</th><th>Product Name</th><th>stock</th><th>description</th><th>price</th><th>Image</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="pro" items="${p}">   
   <tr>  
     <td>${pro.productid} </td>
      <td>${pro.productname} </td>
      <td>${pro.stock}</td>
   <td>${pro.description}</td>
   <td>${pro.price}</td>
   
    <td><img src="${pageContext.request.contextPath}/resources/${pro.productid}.png" height="80px" width="80px"></td>
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="addPro">Add New Product</a>  
</body>
</html>