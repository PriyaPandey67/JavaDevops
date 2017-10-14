<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>
 <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval=2000>
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="resources/image/img.jpg" style="width:70%;" class="img-responsive center-block" />
        <div class="carousel-caption">
          <h3>Dessert</h3>
          <p>Desserts are the fairy tales of the kitchen — a happily-ever-after to supper.
</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/image/abc.jpg" style="width:70%;" class="img-responsive center-block" />
        <div class="carousel-caption">
          <h3>Pizza</h3>
          <p>I ate a salad for dinner! It was mostly croutons & tomatoes really just
             one big round crouton with tomato sauce and cheese. Fine it was pizza. I ate a pizza!</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/image/a.jpg" style="width:70%;" class="img-responsive center-block" />
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>We love the Big Apple!</p>
        </div>
      </div>

    </div>

    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  </div>

  <div><br/><br/><br/></div>
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <div class="thumbnail">
          <img src="resources/image/dessert.jpg" style="width:100%">
            <div class="caption">
              <p>"We must have a pie. Stress cannot exist in the presence of a pie.”</p>
            </div>
          </a>
        </div>
      </div>


      <div class="col-md-4">
        <div class="thumbnail">
            <img src="resources/image/indian.jpg" alt="Nature" style="width:100%">
            <div class="caption">
              <p>Don't go and cook Indian food if you never cooked Indian food, you know?

</p>
            </div>
          </a>
        </div>
      </div>


      <div class="col-md-4">
        <div class="thumbnail">
            <img src="resources/image/chinese.jpg" alt="Fjords" style="width:100%">
            <div class="caption">
              <p>Chinese food tries to engage the mind, not just the palate. To provoke the intellect.</p>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<div><br/><br/><br/></div>

<nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-footer">
      <ul class="nav navbar-nav">
      <li><a href="#">JOIN US</a></li>
      <li><a href="#">INFO</a></li></ul>
      <div class="container">
        <ul class="nav navbar-nav navbar-right">
                  <a href="#">
          <span class="glyphicon glyphicon-envelope"></span></a>
                  <a href="#">
  <span class="glyphicon glyphicon-phone-alt"></span>
  </a></ul>
</div>
    </div>
  </div>
    </nav>


</body>
</html>