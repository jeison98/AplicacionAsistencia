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
public class materia {
    
    String nombre;
    String fac;//facultad
    String salon;
    String jornada;
    int ciclo;
    int id;
    int hora;
    
    
    public materia (String name,int Id,String Fac,String Salon,String Jornada,int Ciclo,int hour)
    {
        this.ciclo=Ciclo;
        this.fac=Fac;
        this.hora=hour;
        this.id=Id;
        this.jornada=Jornada;
        this.nombre=name;
        this.salon=Salon;
    }
    
    
    
    
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFac() {
        return fac;
    }

    public void setFac(String fac) {
        this.fac = fac;
    }

    public String getSalon() {
        return salon;
    }

    public void setSalon(String salon) {
        this.salon = salon;
    }

    public String getJornada() {
        return jornada;
    }

    public void setJornada(String jornada) {
        this.jornada = jornada;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }
    
    
    
    
    
}
