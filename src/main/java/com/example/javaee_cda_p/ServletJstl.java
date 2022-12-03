package com.example.javaee_cda_p;

import com.example.javaee_cda_p.beans.Cda;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


import java.io.IOException;

@WebServlet(name = "ServletJstl", value = "/ServletJstl")
public class ServletJstl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cda cda = new Cda();
        cda.setName("Paris");
        cda.setActif(true);
        request.setAttribute("cda", cda);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jstl.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
