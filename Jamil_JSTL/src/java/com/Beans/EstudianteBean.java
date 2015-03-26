/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Beans;

import javax.ejb.Stateless;

/**
 *
 * @author Ingenieria
 */

public class EstudianteBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private String nombres;
    private String apellidos;

    public EstudianteBean(String nombre, String apellido) {
        this.nombres=nombre;
        this.apellidos=apellido;
    }

    
 

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    
    
}
