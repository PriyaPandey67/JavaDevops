<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<%@ page isELIgnored="false" %>

<head>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<div class="row" >
<div class="col-md-6">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="tab" href="#tab1primary">Category</a></li>
    <li><a data-toggle="tab" href="#tab2primary">Supplier</a></li>
    <li><a data-toggle="tab" href="#tab3primary">Product</a></li>
  </ul>

  <div class="tab-content">
    <div id="tab1primary" class="tab-pane fade in active">
      <form method="post" action="newCat" class="from-signIn">
<span id="reauth-email" class="reauth-email"></span>
<h4 class="input_title">Category Name</h4>
<input class="form-control" type="text" name="categoryname" required/></br></br>
<button class="btn btn-lg btn btn-success" type="submit">save</button>
<button class="btn btn-lg btn btn-danger" type="submit">cancel</button>
</form>
</div>


    <div id="tab2primary" class="tab-pane fade">
     <form method="post" action="newSupp" class="from-signIn">
<span id="reauth-email" class="reauth-email"></span>
<h4 class="input_title">Supplier Name</h4>
<input class="form-control" type="text" name="suppliername" required/>
<h4 class="input_title">Mobile No</h4>
<input class="form-control" type="number" name="mobileno" required/>

</br></br>

<button class="btn btn-lg btn btn-success" type="submit">save</button>
<button class="btn btn-lg btn btn-danger" type="submit">cancel</button>
</form>
      </div>
    
    
    
    <div id="tab3primary" class="tab-pane fade">
    <form method="post" action="newPro" class="from-signIn" enctype="multipart/form-data">
<span id="reauth-email" class="reauth-email"></span>
<h4 class="input_title">Product Name</h4>
<input class="form-control" type="text" name="productname" required/>
<!-- <h4 class="input_title">Supplier Name</h4>
<input class="form-control" type="text" name="suppliername" required/>
 --> 



<h4 class="input_title">Stock</h4>
<input class="form-control" type="number" name="stock" required/>
<h4 class="input_title">Price</h4>
<input class="form-control" type="number" name="price" required/>
<h4 class="input_title">Description</h4>
<input class="form-control" type="text" name="description" required/><br/>
<h4 class="input_title">Image</h4>
<input class="form-control" type="file" name="image" required/><br/>



<h4 class="input_title">Category</h4>
 <select
  class="form-control" name="catid" id="catid" > 
  <option value="">Category Name</option>
  <c:forEach items="${cat}" var="cate">
  <option value="${cate.catid}">${cate.categoryname}</option></c:forEach>
  </select> 
  
  </br><br>
  <h4 class="input_title">Supplier Name</h4>
  <select
  class="form-control" name="id" id="proSupp" > 
  <option value="">Supplier Name</option>
  <c:forEach items="${sup}" var="s">
  <option value="${s.id}">${s.suppliername}</option></c:forEach>
  </select> 
  
<br/>
<button class="btn btn-lg btn btn-success" type="submit">save</button>
<button class="btn btn-lg btn btn-danger" type="submit">cancel</button>
</form>
</div>
</div>
   </div> 
  </div>
</div>

</body>
</html>