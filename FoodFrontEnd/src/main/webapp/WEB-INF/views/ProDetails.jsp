<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"></jsp:include>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>


.btn-minus{cursor:pointer;font-size:7px;display:flex;align-items:center;padding:5px;padding-left:10px;padding-right:10px;border:1px solid gray;border-radius:2px;border-right:0;}
.btn-plus{cursor:pointer;font-size:7px;display:flex;align-items:center;padding:5px;padding-left:10px;padding-right:10px;border:1px solid gray;border-radius:2px;border-left:0;}
.section > div {width:100%;display:inline-flex;}
.section > div > input {margin:0;padding-left:5px;font-size:10px;padding-right:5px;max-width:18%;text-align:center;}



</style>
<script type="text/javascript">
$(document).ready(function(){
    //-- Click on detail
   

    //-- Click on QUANTITY
    $(".btn-minus").on("click",function(){
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)){
            if (parseInt(now) -1 > 0){ now--;}
            $(".section > div > input").val(now);
        }else{
            $(".section > div > input").val("1");
        }
    })            
    $(".btn-plus").on("click",function(){
        var now = $(".section > div > input").val();
        var limit=${pro.stock}
        if ($.isNumeric(now)&& now<limit){
            $(".section > div > input").val(parseInt(now)+1);
        }else{
        	alert("out of stock")
            $(".section > div > input").val("1");
        }
    })                        
}) 

</script>

</head>
<body>


<form action="${pageContext.request.contextPath}/AddToCart/${pro.productid}" method="post">
<div class="container">
<div class="card">
<div class="row">
<div class="col-md-6">
 <img src="${pageContext.request.contextPath}/resources/${pro.productid}.png" height="300px" width="300px"/>             
</div>

<div class="col-md-6">
<h2>${pro.productname}</h2>
<h4>Price: $ ${pro.price}</h4>
<h2> ${pro.description}</h2>
<h4>Quantity</h4>
<div class="section" style="padding-bottom:20px;">
                                           
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" name="stock" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div> 
                  <input class="btn btn-success" type="submit" value="Add to cart">  

</div>
</div>
</div>
</div>
</form>
</body>
</html>