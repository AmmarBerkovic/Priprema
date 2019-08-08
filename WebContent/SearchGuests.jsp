<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <title>Guests</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class="bg-info">
  <%String [] values=request.getParameterValues("");
  %>
  <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
    <a class="navbar-brand mx-5 text-light font-weight-bold" href="#">Welcome</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
      aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <ul class="nav navbar-nav">
          <li class="nav-item">
            <a class="nav-link text-light font-italic" href="Login.jsp">Log Out</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  </br></br></br>
  <div class="container border" style="min-height: 60vh">
    </br></br>
    <div class="row border">
      <div class="offset-2 col-2 d-flex justify-content-around">
        <p class="h3 font-italic">Search by :</p>
      </div>
      <div class="col-8">
        <form action="SearchParam" method="GET">
          <div class="row border">
            <div class="col-3">
                <select class="form-control" id="exampleFormControlSelect4" name="by">
                    <option>Name</option>
                    <option>Surname</option>
                    <option>ID</option>
                    <option>Nick</option>
                  </select>
            </div>
            <div class="col-3">
                <input type="text" class="form-control" placeholder="Enter Value" name="value">
            </div>
            <div class="col-3">
              <button type="submit"
                class="btn btn-block btn-primary rounded font-weight-bold border ">Search</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    </br> </br>
    <div class="table-wrapper-scroll-y my-custom-scrollbar font-italic" style="max-height: 65vh">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Nickname</th>
            <th scope="col">Surname</th>
            <th scope="col">Potvrdi</th>
          </tr>
        </thead><!--ovjde treba bit petlja ...-->
        <tbody>
          <%for(int i=0;i<10;i++){%>
              <tr>
                  <th>1</th>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                  <td><button type="submit" 
                      class="btn btn-block btn-primary rounded font-weight-bold border">More Info</button>
                  </td>
                </tr>
            <%}%>
        </tbody>
      </table>
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