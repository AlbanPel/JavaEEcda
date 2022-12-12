package com.example.bdd;

import com.example.beans.BeanProfile;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Profiles {
    private Connection connexion;
    public List<BeanProfile> allProfiles () {
        List<BeanProfile> beanProfiles = new ArrayList<>();
        Statement statement = null;
        ResultSet result = null;

        //application de ma méthode
        loadDatabase();

        try {
            statement = connexion.createStatement();
            System.out.println("statement init it");
            System.out.println(statement);

            //execution de ma requete
            result = statement.executeQuery("SELECT firstName, lastName, gender, city FROM profiles" );


            //recupération de mes données
            while (result.next()) {
                System.out.println(result.getString(1));
                String firstName = result.getString("firstName");
                String lastName = result.getString("lastName");
                String gender = result.getString("gender");
                String city = result.getString("city");

                BeanProfile beanProfile = new BeanProfile();
                beanProfile.setFirstName(firstName);
                beanProfile.setLastName(lastName);
                beanProfile.setGender(gender);
                beanProfile.setCity(city);

                beanProfiles.add(beanProfile);
            }

        } catch (SQLException e) {

        }finally {
            //close
            try {
                //if(result != null)
                //    result.close();
                //if(statement !=null)
                  //  result.close();
                if(connexion != null)
                    connexion.close();
            } catch (SQLException ignore) {}
        }

        System.out.println(beanProfiles);

        return beanProfiles;
    }

    private void loadDatabase() {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
        }
        try {
            connexion = DriverManager.getConnection("jdbc:sqlite:identifier.sqlite");
            System.out.println("DB CONNECTED!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
