<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<body background="resources/image/i.jpg">
<div class="container">
<div class="col-lg-4"></div>
<div class="col-lg-4">
<div class="jumbotron" style="margin-top:150px">
<h3>Please Login </h3>
<br/>
<form method="post" action="${pageContext.request.contextPath}/login">
<div class="form-group">
<input type="text" name="username" class="form-control" placeholder="Enter Username"></br>
<input type="password" name="password" class="form-control" placeholder="Password">
</div>
<div>
<label>
<input type="checkbox">
Remember me
</label>
</div>
<button type="submit" class="btn btn-primary form-control">
Login</button>
</form>
</div>
</div>
<div class="col-lg-4"></div>
</div>

  

</body>
</html>