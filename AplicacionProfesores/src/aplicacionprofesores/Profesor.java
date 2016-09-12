/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacionprofesores;

/**
 *
 * @author usuario
 */
public class Profesor {
    String nombre;
    String id;
    String correo;
    int tel;
    int edad;
    String jornada;
    String facultad;
    String programa;
    int fallas;
    int llegadastarde;
    String observacion="ninguna";
    
    public Profesor(String name,String ident,int age,String mail,int cel,String Jornada,String Fac,String Programa)
    {
        this.nombre=name;
        this.id=ident;
        this.edad=age;
        this.correo=mail;
        this.tel=cel;
        this.jornada=Jornada;
        this.facultad=Fac;
        this.programa=Programa;
        this.llegadastarde=0;
        this.fallas=0;
    
    }

    
    
    
    
    
    // metodos por defecto
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getJornada() {
        return jornada;
    }

    public void setJornada(String jornada) {
        this.jornada = jornada;
    }

    public String getFacultad() {
        return facultad;
    }

    public void setFacultad(String facultad) {
        this.facultad = facultad;
    }

    public String getPrograma() {
        return programa;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }

    public int getFallas() {
        return fallas;
    }

    public void setFallas(int fallas) {
        this.fallas = fallas;
    }

    public int getLlegadastarde() {
        return llegadastarde;
    }

    public void setLlegadastarde(int llegadastarde) {
        this.llegadastarde = llegadastarde;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }
    
    

    
    
}
