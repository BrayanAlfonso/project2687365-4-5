<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta charset="author" content="Brayan Alfonso">
    <meta name="description" content="Pagina para iniciar sesion completa y terminada Taller 2.">
    <meta name="keywords" content="Login usuario">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Inicio de sesión BrTechnology</title>
    <link rel="icon" type="image/x-icon" href="img/logo.PNG">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="./css/styles.css">
    <link rel="stylesheet" href="./css/signin.css">
</head>
<body class="text-center">
<div class="container">
    <header>

    </header>

    <nav>

    </nav>

    <section>
        <main class="form-signin w-100 m-auto">

            <form action="" method="post">
                <img src="img/logo.PNG" alt="MY APP">
                <h4 class="text-secondary">BrTechnology</h4>
                <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Ingrese su nombre de usuario" required autofocus pattern="[A-Z a-z0-9]{8, 12}">
                    <label for="floatingInput">Usuario:</label>
                </div>

                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Ingrese su nombre contraseña" required pattern="[A-Z a-z0-9]{8, 12}">
                    <label for="floatingPassword">Contraseña:</label>
                </div>
                <br>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
                <div id="id_register">
                    <a href="register.jsp">Registrarse</a>
                </div>


            </form>
        </main>
    </section>

    <footer>
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