/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacionprofesores;

import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author familia velasco
 */
public class AplicacionProfesores {

    ArrayList<Profesor> mainlist= new ArrayList ();
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
      mainmenu v=new mainmenu();
      v.setVisible(true);
       
    }
    
}
