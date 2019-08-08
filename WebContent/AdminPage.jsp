<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <title>AdminPage</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class="bg-info">
  <%String nick=(String)request.getParameter("nick");
   String pass=(String)request.getParameter("pass");
    %>
  <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
    <a class="navbar-brand mx-5 text-light font-weight-bold" href="#">Welcome <%=nick%></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
      aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <ul class="nav navbar-nav">
          <li class="nav-item">
            <form action="Login.jsp">
              <button type="submit" 
                      class="nav-link btn btn-block btn-secondary rounded font-weight-bold border">Logout</button>
            </form>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">
    </br></br></br></br></br>
    <div class="row d-flex justify-content-around">
      <div class="col-6">
        <form action="AddGuest.jsp">
          <button type="submit" class="btn btn-block btn-info rounded font-weight-bold mt-4 shadow-lg"><i
              class="fas fa-10x fa-user-plus my-5"></i>
            <p class="display-4 font-italic font-weight-bold">Add Guest</p>
          </button>
        </form>
      </div>
      <div class="col-6">
        <form action="SearchGuests.jsp">
          <button type="submit" class="btn btn-block btn-info rounded font-weight-bold mt-4 shadow-lg"
            style="min-height: 35vh"><i class="fas fa-10x fa-users my-5"></i>
            <p class="display-4 font-italic font-weight-bold">Find Guest</p>
          </button>
        </form>
      </div>
    </div>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
</body>

</html>