package com.example.javaee_cda_p;

import com.exemple.forms.ConnectionForm;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Servletlogin", value = "/Servletlogin")
public class Servletlogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ConnectionForm form = new ConnectionForm();
        form.verifyAcess(request);
        request.setAttribute("form", form);

       String login = request.getParameter("login");
       HttpSession session = request.getSession();
       session.setAttribute("login", login);

        this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);

    }
}
