package com.codoacodo.dto;


import java.util.Date;


/**
 *
 * @author Marce
 */
public class Orador {

    private String tema;
    private Date fechaAlta;
    
    private Integer id;
    private String nombre;
    public String apellido;
    public String email;

    public Orador(String nombre, String apellido, String email, String tema){
        //super(nombre, apellido, email);
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.tema = tema;
    }
    
   /* public Orador (Long id, String apellido, String nombre, String email, Date fechaAlta, String tema){
        //super(id, nombre, apellido, email);
        this.tema = tema;
        this.fechaAlta = fechaAlta;
    }*/
    
    public Orador (Integer id, String nombre, String apellido, String email, String tema, Date fechaAlta){
        //super(id, nombre, apellido, email);
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.tema = tema;
        this.fechaAlta = fechaAlta;
    }
    
   /* 
    public void exponerCharla(){
        System.out.println("Hola soy Bill Gates y voy a hablar del nuevo orden mundial");
    }
    
    public void inscribirseEnLaConferencia(){
        System.out.println("Datos ingresados y validos");
    }
*/
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
            
    public Date getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Date fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    /*@Override
    public long getId(){
        return 12L;
    }*/
    
    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    @Override
    public String toString() {
        return super.toString() + "Orador{" + "tema=" + tema + '}';
    }
    
    
    
    
}
