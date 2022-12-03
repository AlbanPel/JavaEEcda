package com.exemple.forms;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class ConnectionForm {
    public String getResultat() {
        return resultat;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }

    private String resultat;

    public void verifyAcess(HttpServletRequest request) {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        if (password.equals(login + "test1234")) {
            resultat= "Vous êtes connecté !";
        }
        else {
            resultat = "identifiants ou mot de passe faux !";
        }
    }

}
