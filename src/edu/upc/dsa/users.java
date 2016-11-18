package edu.upc.dsa;

/**
 * Created by hicham.az on 18/11/2016.
 */
public class users implements Usuario {
    String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    String name;

    public users(String id, String name, String apellido) {
        this.id = id;
        this.name = name;
        this.apellido = apellido;
    }
    public users(){}

    String apellido;


    @Override
    public String GetUsers() {
        return null;
    }

    @Override
    public String User(String id, String name, String apellido) {
        return null;
    }

    @Override
    public String UpdateUser(String id, String name, String apellido) {
        return null;
    }

    @Override
    public String GetEtakemons() {
        return null;
    }

    @Override
    public String AddEtakemons() {
        return null;
    }
}
