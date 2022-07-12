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
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        EmpleadoDao empleadoDao = new EmpleadoDao();
        String dni = request.getParameter("dni");
        String password = request.getParameter("password");

        Empleado empleado = empleadoDao.validarPass(dni,password);


    }
}
