<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <title>Login</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class="bg-info">
  <div class="row border border-dark shadow-lg bg-secondary d-flex justify-content-around mt-4">
    <p class="display-3 font-italic text-light text-white ">Hotel Web Management Application</p>
  </div>
  <div class="container">
    <form action="LogAcceptance" method="POST">
      <div class="card text-dark border shadow-lg border-dark mt-5" style="max-width: 30;">
        <div class="card-header bg-info text-center text-light h3  justify-content-around d-flex">
          <div class="offset-1"></div>
          Sign in
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="typeUser" value="admins">
            <label class="form-check-label font-italic" for="inlineRadio1">Admin</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input " type="radio" name="typeUser" value="guests">
            <label class="form-check-label font-italic" for="inlineRadio2">Guest</label>
          </div>
          <div class="offset-1"></div>
        </div>
        <div class="card-body bg-secondary font-italic text-white">
          <input type="text" class="form-control col-12 my-2" placeholder="Enter Nickname" name="nick">
          <input type="password" class="form-control col-12 my-4" placeholder="Enter Password" name="pass">
          <button type="submit" class="btn btn-block btn-primary border border-dark font-weight-bold mt-4">Done</button>
        </div>
      </div>
    </form>
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