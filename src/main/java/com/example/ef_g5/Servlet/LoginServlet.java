package com.example.ef_g5.Servlet;

import com.example.ef_g5.Bean.Empleado;
import com.example.ef_g5.Daos.EmpleadoDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet",""})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "login" : request.getParameter("action");

        switch (action) {
            case "login" -> {

            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request, response);
            }
            case "logout" -> {
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect(request.getContextPath());
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        EmpleadoDao empleadoDao = new EmpleadoDao();
        String dni = request.getParameter("dni");
        String password = request.getParameter("password");

        Empleado empleado = empleadoDao.validarPass(dni,password);

        if (empleado!=null){
            String rol = empleadoDao.ObtenerRol(empleado.getIdEmpleado());
            session.setAttribute("rolLogueado",rol);

            session.setAttribute("empleadoLogueado",empleado);

            session.setMaxInactiveInterval(60*60);

            response.sendRedirect(request.getContextPath()+"/CarteleraServlet");

        } else {
            request.getSession().setAttribute("error","Error al iniciar sesión");
            response.sendRedirect(request.getContextPath());
        }
    }
}
