package com.example.javaee_cda_p;

import com.example.javaee_cda_p.beans.Cda;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


import java.io.IOException;

@WebServlet(name = "ServletHome", value = "/ServletHome")
public class ServletHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("id", id);

        String[] cdas = {"cda Paris", "cda Lyon", "cda Aix", "cda Nice"};
        request.setAttribute("cdas", cdas);

        Cda cda = new Cda();
        cda.setName("Paris");
        cda.setActif(true);
        request.setAttribute("cda", cda);

        this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
