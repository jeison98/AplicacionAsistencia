/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacionprofesores;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author familia velasco
 */
public class ConexionSQL {
    Connection co;
    Statement stm;
    
    public Connection ConexionSQL()
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection co = DriverManager.getConnection("jdbc:mysql://localHost/gestiondefallas?user=root&password=1234");
            Statement stm = co.createStatement();
            System.out.println("conectado");

            

        }

        catch (Exception e)
        {
        System.out.println(e.getMessage());
        JOptionPane.showMessageDialog(null,"no conectado");
        }
        return co;
    }
}
