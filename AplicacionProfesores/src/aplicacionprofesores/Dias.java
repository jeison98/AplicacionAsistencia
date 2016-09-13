/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacionprofesores;

/**
 *
 * @author familia velasco
 */

public class Dias {
    
    int dia;
    String salon;
    String nombre;
    String materia;
    
   
    public Dias (int Dia,String Salon, String Nombre, String Materia)
    {
        this.dia=Dia;
        this.nombre=Nombre;
        this.materia=Materia;
        this.salon=Salon;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    public String getSalon() {
        return salon;
    }

    public void setSalon(String salon) {
        this.salon = salon;
    }
   
}
