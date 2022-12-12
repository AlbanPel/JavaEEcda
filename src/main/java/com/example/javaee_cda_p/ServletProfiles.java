package com.example.javaee_cda_p;

import com.example.bdd.Profiles;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletProfiles", value = "/ServletProfiles")
public class ServletProfiles extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Profiles tableProfiles = new Profiles();
        request.setAttribute("profiles", tableProfiles.allProfiles());
        this.getServletContext().getRequestDispatcher("/WEB-INF/profiles.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
