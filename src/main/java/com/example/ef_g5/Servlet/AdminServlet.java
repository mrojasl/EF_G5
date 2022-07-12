package com.example.ef_g5.Servlet;
import com.example.ef_g5.Bean.Empleado;
import com.example.ef_g5.Daos.CarteleraDao;
import com.example.ef_g5.Daos.EmpleadoDao;
import com.example.ef_g5.Dto.CarteleraDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminServlet", value = "/AdminServlet")
public class AdminServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "cartelera" : request.getParameter("action");
        Empleado empleadoLogueado = (Empleado) request.getSession().getAttribute("empleadoLogueado");
        EmpleadoDao empleadoDao = new EmpleadoDao();
        RequestDispatcher requestDispatcher;

        switch (action) {
            case "cartelera" ->{
                request.setAttribute("listaCartelera", empleadoDao.obtenerEmplSinJefe());
                requestDispatcher = request.getRequestDispatcher("admin.jsp");
                requestDispatcher.forward(request, response);
            }
        }
    }
}
