<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User List</h1>  
       <form:form method="post" action="/FoodFrontEnd/editsave" modelAttribute="command">    
        <table >    
        
         <tr>    
          <td>First Name : </td>   
          <td><form:input path="firstname"  /></td>  
         </tr>
         
         <tr>    
          <td>Last Name : </td>   
          <td><form:input path="lastname"  /></td>  
         </tr>    
             
         <tr>    
          <td>Password :</td>    
          <td><form:input path="password" /></td>  
         </tr> 
         
         <tr>    
          <td>Confirm Password : </td>   
          <td><form:input path="confirmpassword"  /></td>  
         </tr>    
           
           <tr>    
          <td> Address: </td>   
          <td><form:input path="address"  /></td>  
         </tr>    
         
          <tr>    
          <td> Mobile No: </td>   
          <td><form:input path="mobileno"  /></td>  
         </tr>    
         
          <tr>    
          <td> Email: </td>   
          <td><form:input path="email"  /></td>  
         </tr>    
          
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>    


</body>
</html>