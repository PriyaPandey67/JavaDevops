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
<form:form action="newUser" method="post" modelAttribute="cmd">
<table>
  <tr>
    <td><form:label path="firstname">First Name</form:label></td>
    <td><form:input path="firstname"/></td>
  </tr>
  <tr>
    <td><form:label path="lastname">Last Name</form:label></td>
    <td><form:input path="lastname"/></td>
  </tr>
  <tr>
    <td><form:label path="password">Password</form:label></td>
    <td><form:input path="password"/></td>
  </tr>
  
   <tr>
    <td><form:label path="confirmpassword">Confirm Password</form:label></td>
    <td><form:input path="confirmpassword"/></td>
  </tr>
 
  <tr>
    <td><form:label path="address">Address</form:label></td>
    <td><form:input path="address"/></td>
  </tr>
 
 <tr>
    <td><form:label path="mobileno">Mobile No</form:label></td>
    <td><form:input path="mobileno"/></td>
  </tr>
 
 <tr>
    <td><form:label path="email">Email</form:label></td>
    <td><form:input path="email"/></td>
  </tr>
 
 
 
  <tr>
  	<td colspan="2"><input type="submit" value="click"/></td>
  </tr>
</table>
</form:form>

</body>
</html>