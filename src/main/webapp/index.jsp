<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean type="com.example.ef_g5.Bean.Empleado" class="com.example.ef_g5.Bean.Empleado" id="empleadoLogueado" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="https://cdn-icons.flaticon.com/png/512/826/premium/826070.png?token=exp=1656523939~hmac=95e0835542059253ef913f926ef83145">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>JSP - Hello World</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <!-- Custom fonts for this template-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!--link-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel = "icon" href =
                "https://assets.website-files.com/60b56cdf18d38e15ce088579/60c111551dc75d6dc896a30e_pucp-favicon.png"
              type = "image/x-icon">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!--link--stars-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            body{
                background-position: right center;
            }
        </style></head>
    <body>
    <div class="modal-fullscreen-sm-down text-center w-75 mt-5 rounded align-content-center ">
        <div class="col-sm-14" style="background-color: black;margin-left: 500px" >
            <div class="mb-3">

                <img class="mb-4 mt-4" src="Inicio_Sesion/logo.jpg" alt=" " width="230" height="230">
                <p class="text-center" style="color: aliceblue; font-size: 25px" ><b>CinEstudiar Examen Final</b></p>

                <form method="post" action="<%=request.getContextPath()%>/LoginServlet">

                    <div class="mb-3 mt-3 ms-4 me-4">
                        <input name="dni" type="number" id="form2Example1" class="form-control" max="99999999" />
                        <label class="form-label" for="form2Example1">DNI</label>
                    </div>
                    <div class="mb-3 mt-3 ms-4 me-4">
                        <input name="password" type="password" id="form2Example2" class="form-control" />
                        <label class="form-label" for="form2Example2">Contraseña</label>
                    </div>
                    <% if (session.getAttribute("error") != null) { %>
                    <div class="text-danger mb-2"><%=session.getAttribute("error")%></div>

                    <%session.removeAttribute("error");
                    }%>

                    <div class="mb-3 mt-4">
                        <button type="submit" class="btn btn-primary btn-user btn-block">
                            Ingresar
                        </button>
                    </div>

                </form>
                <div>
                    <br>
                </div>

            </div>
        </div>
    </div>
    </body>
</html>