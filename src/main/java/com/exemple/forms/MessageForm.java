package com.exemple.forms;

import jakarta.servlet.http.HttpServletRequest;

public class MessageForm {

    private String name;
    private String firstName;
    private String mail;
    private String message;

    public Boolean getError() {
        return error;
    }

    public void setError(Boolean error) {
        this.error = error;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    private Boolean error;
    private String link;

    private String result;


    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    private String phone;

    public void verifyMessage(HttpServletRequest request) {
        name = request.getParameter("name");
        firstName = request.getParameter("firstName");
        phone = request.getParameter("phone");
        message = request.getParameter("message");
        mail = request.getParameter("mail");
        error = false;
        if (message.isEmpty() || mail.isEmpty() ) {
            error = true;
            result = "Veuillez renseigner le champs ci dessus ";
            link = "/WEB-INF/firstForm.jsp";
        }else {
            result = "Message envoyé";
            link = "/WEB-INF/firstFormResponse.jsp";
        }

    }

}
