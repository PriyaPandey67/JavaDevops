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
<jsp:include page="header.jsp"></jsp:include>
<h1>Category List</h1> 
<table border="2" width="70%" cellpadding="2">  
<tr><th>Category id</th><th>Category Name</th></tr>  
   <c:forEach var="c" items="${c}">   
   <tr>  
     <td>${c.catid} </td>
      <td>${c.categoryname} </td>
      
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="addPro">Add New </a>  

</body>
</html>