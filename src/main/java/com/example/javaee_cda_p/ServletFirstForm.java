package com.example.javaee_cda_p;

import com.exemple.forms.MessageForm;
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
        //String name = request.getParameter("name");
        //request.setAttribute("name", name);

        //String firstName = request.getParameter("firstName");
        //request.setAttribute("firstName", firstName);

       // String phone = request.getParameter("phone");
       // request.setAttribute("phone", phone);

       // String mail = request.getParameter("mail");
       // request.setAttribute("mail", mail);

       // String message = request.getParameter("message");
       // request.setAttribute("message", message);

       // if ( mail.isEmpty() || message.isEmpty()) {
       //     if (mail.isEmpty()) {
       //         String errorMail = "Veuillez renseigner le mail";
       //         request.setAttribute("errorMail", errorMail);
       //     }
       //     if (message.isEmpty()) {
       //         String errorMessage = "Veuillez renseigner un message";
       //         request.setAttribute("errorMessage", errorMessage);
        //    }
        //    this.getServletContext().getRequestDispatcher("/WEB-INF/firstForm.jsp").forward(request, response);
        //}
        //this.getServletContext().getRequestDispatcher("/WEB-INF/firstFormResponse.jsp").forward(request, response);

        MessageForm messageForm = new MessageForm();
        messageForm.setFirstName(request.getParameter("name"));
        messageForm.verifyMessage(request);
        request.setAttribute("messageForm", messageForm);
        this.getServletContext().getRequestDispatcher(messageForm.getLink()).forward(request, response);


    }
}
