<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
    <div class="container">
    <div class="row">
      <div class="col-md-6">
      <!-- <div class="col-lg-4 col-lg-offset-4"> -->
       <nav class="navbar ">
    <ul class="nav nav-pills">
  <li class="active"><a data-toggle="pill" href="#home">Credit/Debit</a></li>
  <li><a data-toggle="pill" href="#menu1">Net Banking</a></li>
</ul>

<!-- </div> -->
<br/><br/><br/>
<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
  <!--  <div class="col-lg-12"> -->
    <div class="panel panel-default credit-card-box">
  <div class="panel-heading display-table" >
    <div class="row display-tr" >
    <h3 class="panel-title display-td" >Payment Details</h3>
    <div class="display-td" >
    <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
    </div>
    </div>
    </div>
    <div class="panel-body">
    <form>
     <div class="row">
     <div class="col-xs-12">
     <div class="form-group">
     <label for="cardNumber">CARD NUMBER</label>
      <div class="input-group">
       <input type="tel" class="form-control" name="cardNumber" placeholder="Valid Card Number"  autocomplete="cc-number" required autofocus
   />

  <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
 </div>
   </div>
   </div>
  </div>
   <div class="row">
   <div class="col-xs-7 col-md-7">
   <div class="form-group">
   <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
  <input type="tel" class="form-control" name="cardExpiry" placeholder="MM / YY" autocomplete="cc-exp" required   />
   </div>
   </div>
     <div class="col-xs-5 col-md-5 pull-right">
     <div class="form-group">
      <label for="cardCVC">CV CODE</label>
  <input type="tel" class="form-control" name="cardCVC" placeholder="CVC" autocomplete="cc-csc" required   />
     </div>
       </div>
   </div>
<div class="row">
   <div class="col-xs-12">
    <div class="form-group">
           <label for="couponCode">COUPON CODE</label>
       <input type="text" class="form-control" name="couponCode" />
         </div>
     </div>
                       </div>
                       <div class="row">
                           <div class="col-xs-12">
                               <button class="subscribe btn btn-success btn-lg btn-block" type="button">Start Subscription</button>
                           </div>
                       </div>
                       <div class="row" style="display:none;">
                           <div class="col-xs-12">
                               <p class="payment-errors"></p>
                           </div>
                       </div>
                   </form>
               </div>
           </div>
         <!-- CREDIT CARD FORM ENDS HERE -->

<!-- </div> -->
       </div>



  <div id="menu1" class="tab-pane fade ">
    <div class="col-lg-12">
  <div class="panel panel-default ">
  <div class="panel-heading display-table" >
    <div class="row display-tr" >
    <div class="display-td" >
    <label for="Net Bankig"> NetBanking:</label>
  <br/><br/>
  <ul><img src="image/photo.jpg" alt="hdfc" width="25" height="25">
    <input type="radio" name="bank"> HDFC</ul>

    <ul><img src="image/images.png" alt="sbi" width="25" height="25">
      <input type="radio" name="bank"> SBI</ul>

    <ul><img src="image/download.jpg" alt="icici" width="25" height="25">
      <input type="radio" name="bank"> ICICI</ul>

  <ul><img src="image/bob.gif" alt="bob" width="25" height="25">
    <input type="radio" name="bank"> BOB<ul>

  <button type="button" class="btn btn-success">back</button>
  <button type="button" class="btn btn-success">continue</button>
</div>
</div>
</div>
</div>
</div>
</div>

</div>-----

</nav>
 </div> <!--col-6 -->
</br>
</br>
</br>
</br>
</br>

 <div class="col-md-6"><!--starts heree-->
   <div class="panel panel-default">
     <div class="panel-heading">
        <h4 >User Profile</h4></div>
      <div class="panel-body">

                 <br>

                 <!-- /input-group -->
               </div>
               <div class="col-sm-6">
               <h4 style="color:#00b1b1;">priya pandey </h4></span>
                 <span><p>Aspirant</p></span>
               </div>
               <div class="clearfix"></div>
               <hr style="margin:5px 0 5px 0;">

   <div class="col-sm-5 col-xs-6 tital " >First Name:</div><div class="col-sm-7 col-xs-6 ">Priya pandey</div>
        <div class="clearfix"></div>
   <div class="bot-border"></div>
   <hr style="margin:5px 0 5px 0;">

   <div class="col-sm-5 col-xs-6 tital " >email:</div><div class="col-sm-7 col-xs-6 ">priyapandey@gmail.com</div>
        <div class="clearfix"></div>
   <div class="bot-border"></div>
   <hr style="margin:5px 0 5px 0;">

   <div class="col-sm-5 col-xs-6 tital " >address:</div><div class="col-sm-7 col-xs-6 ">delhi</div>
        <div class="clearfix"></div>
   <div class="bot-border"></div>
   <hr style="margin:5px 0 5px 0;">

   <div class="col-sm-5 col-xs-6 tital " >mobile:</div><div class="col-sm-7 col-xs-6 ">987654321</div>
        <div class="clearfix"></div>
   <div class="bot-border"></div>
   <hr style="margin:5px 0 5px 0;">
               <!-- /.box-body -->
             </div>
             <!-- /.box -->

           </div>


       </div>
       </div>
 </div>
      </div>

 </div> <!--ends  here-->
</div>

</div>

</div>
</nav>
</body>
</html>