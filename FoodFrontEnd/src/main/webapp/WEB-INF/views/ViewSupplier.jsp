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
<h1>Supplier List</h1> 
<table border="2" width="70%" cellpadding="2">  
<tr><th>Supplier id</th><th>Supplier Name</th><th>Mobile No</th></tr>  
   <c:forEach var="s" items="${s}">   
   <tr>  
     <td>${s.id} </td>
      <td>${s.suppliername} </td>
      <td>${s.mobileno} </td>
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="addPro">Add New supplier</a>  

</body>
</html>