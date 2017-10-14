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
<div class="container">

<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog modal-sm">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h4 class="modal-title">header</h4>
</div>
<div class="modal-body">
<p>Product data inserted</p>
</div>
<div class="modal-footer">
<a href="viewProductList">view product</a>
</div>
</div>
</div>
</div>
</div>
<script>
$(document).ready(function(){
	$('#myModal').modal('show')
});
</script>
</body>
</html>