<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body background="resources/image/Bckgrnd2.jpg">
<jsp:include page="header.jsp"></jsp:include>
<form method="post" action="${pageContext.request.contextPath}/saveuser">


<div class="container" id="wrap">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3">
              <legend>Sign Up</legend>
                    <h4>It's free and always will be.</h4>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <input type="text" name="firstname" value="" class="form-control input-lg" placeholder="First Name"  />                        </div>
                        <div class="col-xs-6 col-md-6">
                        
                            <input type="text" name="lastname" value="" class="form-control input-lg" placeholder="Last Name"  />                        </div>
                    </div>
                    <input type="text" name="email" value="" class="form-control input-lg" placeholder="Your Email"  />
                    <input type="password" name="password" value="" class="form-control input-lg" placeholder="Password"  />
                    <input type="password" name="confirmpassword" value="" class="form-control input-lg" placeholder="Confirm Password"  />  
                     <input type="text" name="address" value="" class="form-control input-lg" placeholder="Address"  />
                      <input type="text" name="mobileno" value="" class="form-control input-lg" placeholder="Mobile"  />    
                    <br />
              <span class="help-block">By clicking Create my account, you agree to our Terms and that you have read our Data Use Policy, including our Cookie Use.</span>
                    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">
                        Create my account</button>
                      
          </div>
</div>            
</div>
</form>






</body>
</html>