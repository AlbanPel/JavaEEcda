package com.example.javaee_cda_p;

import com.exemple.forms.ConnectionForm;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.UUID;

@WebServlet(name = "Servletlogin", value = "/Servletlogin")
public class Servletlogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("CookieAge")) {
                    request.setAttribute("MyCookie", cookie.getValue());
                }
            }
        }

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

        String cookieValue = "MonSuperCookie";
        response.addCookie(new Cookie("helloCookie", cookieValue));

        String cookieAgeValue = "MonCookieAge";
        Cookie cookieAge = new Cookie("CookieAge", cookieAgeValue);
        cookieAge.setMaxAge(60*60*24);
        response.addCookie(cookieAge);

        UUID uuid = UUID.randomUUID();
        String uuidString = uuid.toString();
        response.addCookie(new Cookie("uuidCookie", uuidString));





       this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);

    }
}
