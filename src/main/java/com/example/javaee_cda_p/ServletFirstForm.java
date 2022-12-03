package com.example.javaee_cda_p;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletFirstForm", value = "/ServletFirstForm")
public class ServletFirstForm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/firstForm.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        request.setAttribute("name", name);
        this.getServletContext().getRequestDispatcher("/WEB-INF/firstFormResponse.jsp").forward(request, response);



    }
}
