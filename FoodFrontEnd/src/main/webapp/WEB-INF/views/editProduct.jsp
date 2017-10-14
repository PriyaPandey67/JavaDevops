<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>Insert title here</title>
</head>
<body>
<h1>User List</h1>  
       <form:form method="post" action="/FoodFrontEnd/admin/editsave" modelAttribute="command" enctype="multipart/form-data">    
        <table >    
        
        
        <tr>    
          
          <td><form:hidden path="productid"  /></td>  
         </tr><tr>    
          <td>Product name: </td>   
          <td><form:input path="productname"  /></td>  
         </tr>
         
        <tr><td>Category</td> 
  <td> <select
    class="form-control" name="catid" id="catid" > 
   <option value="">Category Name</option>
   <c:forEach items="${cat}" var="cate">
   <option value="${cate.catid}">${cate.categoryname}</option></c:forEach>
  </select> 
        </td></tr>
        
        
        <tr><td>Supplier Name</td> 
  <td> <select
    class="form-control" name="catid" id="catid" > 
   <option value="">---select--</option>
   <c:forEach items="${sup}" var="s">
   <option value="${s.id}">${s.suppliername}</option></c:forEach>
  </select> 
        </td></tr>
        
        <tr><td>Image</td>
       <td>
<input class="form-control" type="file" name="image"/></td></tr>
        
        
        
         <tr>    
          <td>Stock : </td>   
          <td><form:input path="stock"  /></td>  
         </tr>    
           
           <tr>    
          <td> Description: </td>   
          <td><form:input path="description"  /></td>  
         </tr>
         
             
         
          <tr>    
          <td> Price: </td>   
          <td><form:input path="price"  /></td>  
         </tr>    
         
         
          
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>    


</body>
</html>