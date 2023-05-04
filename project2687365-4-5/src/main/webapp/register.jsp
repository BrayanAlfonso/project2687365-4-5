<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta charset="author" content="Brayan Alfonso">
  <meta name="description" content="Pagina para registrar usuario completa y terminada Taller 2.">
  <meta name="keywords" content="Registro usuario">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Registro de usuario BrTechnology</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/styles.css">
  <link rel="stylesheet" href="./css/signin.css">
</head>

<body>
<div class="container">
  <header class="text-center">

    <br/>
  </header>

  <nav>

  </nav>

  <section class="text-center">

    <main class="form-signin w-100 m-auto">

      <form action="" method="post">
        <img src="img/logo.PNG" alt="BrTechnology">
        <h4 class="text-secondary">BrTechnology</h4>
        <h1 class="h5 mb-3 fw-normal">Registro de usuario</h1>
        <div class="form-floating">
          <input type="text" class="form-control" id="floatingInput" id="name" name="name" placeholder="Ingrese sus nombres" required autofocus pattern="[A-Za-z]{2,40}">
          <label for="name">Nombres:</label>
        </div>

        <div class="form-floating">

          <input type="text" class="form-control" id="lname" name="lname" placeholder="Ingrese sus apellidos" required pattern="[A-Za-z]{2,40}">
          <label for="lname">Apellidos:</label>
        </div>

        <div class="form-floating">

          <input type="email" class="form-control"  id="email" name="email" placeholder="Ingrese su correo" required pattern="{60}">
          <label for="email">Correo:</label>
        </div>

        <div class="form-floating">

          <input type="password" class="form-control"  id="password" name="password" placeholder="Ingrese su contraseña" required pattern=
                  ^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$><br><br>
          <label for="password">Contraseña:</label>
        </div>

        <button class="btn btn-primary" type="submit" >Enviar</button>


      </form>
    </main>
  </section>
  <footer class="text-center">
    <p class="mt-3 mb-3 text-muted"> Todos los derechos reservados BrTechnology © <%=displaydate()%></p>
  </footer>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<%!
  public String displaydate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return dateFormat.format(date);
  }
%>
</body>
</html>